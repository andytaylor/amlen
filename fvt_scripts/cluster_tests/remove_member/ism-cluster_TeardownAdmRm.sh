#! /bin/bash

#----------------------------------------------------
#  This script defines the scenarios for the ism Test Automation Framework.
#  It can be used as an example for defining other testcases.
#----------------------------------------------------

# TODO!:  MODIFY scenario_set_name to a short description appropriate for your testcase
# Set the name of this set of scenarios

scenario_set_name="Cluster Teardown AdminRemoveMember- 00"

typeset -i n=0


# Set up the components for the test in the order they should start
# What is configured here is different for each component and the options are used in run-scenarios.sh:
#   Tool SubController:
#		component[x]=<subControllerName>,<machineNumber_ismSetup>,<config_file>
# or	component[x]=<subControllerName>,<machineNumber_ismSetup>,"-o \"-x <param> -y <params>\" "
#	where:
#   <SubControllerName>
#		SubController controls and monitors the test case runningon the target machine.
#   <machineNumber_ismSetup>
#		m1 is the machine 1 in ismSetup.sh, m2 is the machine 2 and so on...
#		
# Optional, but either a config_file or other_opts must be specified
#   <config_file> for the subController 
#		The configuration file to drive the test case using this controller.
#	<OTHER_OPTS>	is used when configuration file may be over kill,
#			parameters are passed as is and are processed by the subController.
#			However, Notice the spaces are replaced with a delimiter - it is necessary.
#           The syntax is '-o',  <delimiter_char>, -<option_letter>, <delimiter_char>, <optionValue>, ...
#       ex: -o_-x_paramXvalue_-y_paramYvalue   or  -o|-x|paramXvalue|-y|paramYvalue
#
#   DriverSync:
#	component[x]=sync,<machineNumber_ismSetup>,
#	where:
#		<m1>			is the machine 1
#		<m2>			is the machine 2
#
#   Sleep:
#	component[x]=sleep,<seconds>
#	where:
#		<seconds>	is the number of additional seconds to wait before the next component is started.
#

#-----------------------------------------------------
#-----------------------------------------------------
#-----------------------------------------------------
# teardown has been moved to the end of ism-Cluster-AdmRm-00.sh to avoid problems with servers ending up in maintenance mode
#-----------------------------------------------------
#-----------------------------------------------------
#-----------------------------------------------------


##----------------------------------------------------
## Scenario 0 - tearDown
##----------------------------------------------------
## All appliances running
#xml[${n}]="tearDown"
#timeouts[${n}]=400
#scenario[${n}]="${xml[${n}]} -  RemoveMember Tests: start a3 then tear down all appliances to singleton machines"
#component[1]=cAppDriverLogWait,m1,"-e|../scripts/cluster.py,-o|-a|tearDown|-l|1|2|3|4|-v|2"
#components[${n}]="${component[1]}"
#((n+=1))
#
##----------------------------------------------------
## Cleanup Scenario  - Delete AdmRm test related configuration 
##----------------------------------------------------
#xml[${n}]="clusterRM_config_cleanup"
#timeouts[${n}]=30
#scenario[${n}]="${xml[${n}]} - Delete admin-remove-member test related configuration"
#component[1]=cAppDriverLogWait,m1,"-e|../scripts/run-cli.sh","-o|-s|cleanup|-c|remove_member/remove_member.cli"
#component[2]=cAppDriverLogWait,m1,"-e|../scripts/run-cli.sh","-o|-s|cleanup|-c|remove_member/remove_member.cli|-a|2"
#component[3]=cAppDriverLogWait,m1,"-e|../scripts/run-cli.sh","-o|-s|cleanup|-c|remove_member/remove_member.cli|-a|3"
#component[4]=cAppDriverLogWait,m1,"-e|../scripts/run-cli.sh","-o|-s|cleanup|-c|remove_member/remove_member.cli|-a|4"
#components[${n}]="${component[1]} ${component[2]} ${component[3]} ${component[4]}"
#((n+=1))
#
##----------------------------------------------------
## Cleanup Scenario  - reset cluster sync timeouts 
##----------------------------------------------------
#xml[${n}]="clusterRM_reset_sync_timeouts"
#timeouts[${n}]=30
#scenario[${n}]="${xml[${n}]} - Cleanup config used in common topic tree tests.  "
#component[1]=cAppDriverLog,m1,"-e|retained_messages/ism-clusterRM_UpdateClusterSyncTimeouts.sh,-o|-s|1|-r|1"
#component[2]=cAppDriverLog,m1,"-e|retained_messages/ism-clusterRM_UpdateClusterSyncTimeouts.sh,-o|-s|2|-r|1"
#component[3]=cAppDriverLog,m1,"-e|retained_messages/ism-clusterRM_UpdateClusterSyncTimeouts.sh,-o|-s|3|-r|1"
#component[4]=cAppDriverLog,m1,"-e|retained_messages/ism-clusterRM_UpdateClusterSyncTimeouts.sh,-o|-s|4|-r|1"
#components[${n}]="${component[1]} ${component[2]} ${component[3]} ${component[4]}"
#((n+=1))