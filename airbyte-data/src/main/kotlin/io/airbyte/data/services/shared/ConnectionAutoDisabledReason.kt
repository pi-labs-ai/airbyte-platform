/*
 * Copyright (c) 2020-2025 Airbyte, Inc., all rights reserved.
 */

package io.airbyte.data.services.shared

enum class ConnectionAutoDisabledReason {
  TOO_MANY_FAILED_JOBS_WITH_NO_RECENT_SUCCESS,
  SCHEMA_CHANGES_ARE_BREAKING,
  DISABLE_CONNECTION_IF_ANY_SCHEMA_CHANGES,
  INVALID_CREDIT_BALANCE,
  CONNECTOR_NOT_SUPPORTED,
  WORKSPACE_IS_DELINQUENT,
  INVOICE_MARKED_UNCOLLECTIBLE,
  INVALID_PAYMENT_METHOD,
  UNSUBSCRIBED,
  MANUALLY_LOCKED,
}
