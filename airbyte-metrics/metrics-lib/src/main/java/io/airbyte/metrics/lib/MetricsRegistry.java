/*
 * Copyright (c) 2020-2025 Airbyte, Inc., all rights reserved.
 */

package io.airbyte.metrics.lib;

/**
 * Interface representing metrics collected an Airbyte Application. This interface is present as
 * Java doesn't support enum inheritance as of Java 17. Not a registry, rather metric metadata/info
 */
public interface MetricsRegistry {

  MetricEmittingApp getApplication();

  String getMetricName();

  String getMetricDescription();

}
