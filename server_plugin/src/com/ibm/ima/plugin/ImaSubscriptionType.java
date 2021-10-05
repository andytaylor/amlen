/*
 * Copyright (c) 2014-2021 Contributors to the Eclipse Foundation
 * 
 * See the NOTICE file(s) distributed with this work for additional
 * information regarding copyright ownership.
 * 
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package com.ibm.ima.plugin;

/**
 * Define the type of a shared subscription
 */
public enum ImaSubscriptionType {
    
    /** Non durable */
    NonDurable,
    
    /** Durable */
    Durable;
    
    //   /** Local shared, non durable */
    //   SharedNonDurable,
    //   
    //   /** Local shared, durable */ 
    //   SharedDurable,
    //   
    //   /** Global shared, non durable */
    //   GlobalNonDurable,
    //   
    //   /** Global shared, durable */
    //   GlobalDurable
    public static final String COPYRIGHT = "\n\nCopyright (c) 2014-2021 Contributors to the Eclipse Foundation\n" +
        "See the NOTICE file(s) distributed with this work for additional\n" +
        "information regarding copyright ownership.\n\n" +
        "This program and the accompanying materials are made available under the\n" +
        "terms of the Eclipse Public License 2.0 which is available at\n" +
        "http://www.eclipse.org/legal/epl-2.0\n\n" +
        "SPDX-License-Identifier: EPL-2.0\n\n";

}