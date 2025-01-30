
{{/* DO NOT EDIT: This file was autogenerated. */}}

{{/*
    Common Configuration
*/}}

{{/*
Renders the common secret name
*/}}
{{- define "airbyte.common.secretName" }}
{{- if .Values.global.secretName }}
    {{- .Values.global.secretName }}
{{- else }}
    {{- .Values.global.secretName | default (printf "%s-airbyte-secrets" .Release.Name) }}
{{- end }}
{{- end }}

{{/*
Renders the global.edition value
*/}}
{{- define "airbyte.common.edition" }}
    {{- ternary "pro" .Values.global.edition (or (eq .Values.global.edition "pro") (eq .Values.global.edition "enterprise")) }}
{{- end }}

{{/*
Renders the common.edition environment variable
*/}}
{{- define "airbyte.common.edition.env" }}
- name: AIRBYTE_EDITION
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_EDITION
{{- end }}

{{/*
Renders the global.version value
*/}}
{{- define "airbyte.common.version" }}
    {{- .Values.global.version | default .Chart.AppVersion }}
{{- end }}

{{/*
Renders the common.version environment variable
*/}}
{{- define "airbyte.common.version.env" }}
- name: AIRBYTE_VERSION
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_VERSION
{{- end }}

{{/*
Renders the global.cluster.type value
*/}}
{{- define "airbyte.common.cluster.type" }}
    {{- .Values.global.cluster.type }}
{{- end }}

{{/*
Renders the common.cluster.type environment variable
*/}}
{{- define "airbyte.common.cluster.type.env" }}
- name: AIRBYTE_CLUSTER_TYPE
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_CLUSTER_TYPE
{{- end }}

{{/*
Renders the global.cluster.name value
*/}}
{{- define "airbyte.common.cluster.name" }}
    {{- .Values.global.cluster.name }}
{{- end }}

{{/*
Renders the common.cluster.name environment variable
*/}}
{{- define "airbyte.common.cluster.name.env" }}
- name: AIRBYTE_CLUSTER_NAME
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_CLUSTER_NAME
{{- end }}

{{/*
Renders the global.airbyteUrl value
*/}}
{{- define "airbyte.common.airbyteUrl" }}
    {{- .Values.global.airbyteUrl }}
{{- end }}

{{/*
Renders the common.airbyteUrl environment variable
*/}}
{{- define "airbyte.common.airbyteUrl.env" }}
- name: AIRBYTE_URL
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_URL
{{- end }}

{{/*
Renders the global.api.host value
*/}}
{{- define "airbyte.common.api.host" }}
    {{- ternary (printf "http://localhost:%d/api/public" (int .Values.server.service.port)) (printf "%s/api/public" .Values.global.airbyteUrl) (eq .Values.global.edition "community") }}
{{- end }}

{{/*
Renders the common.api.host environment variable
*/}}
{{- define "airbyte.common.api.host.env" }}
- name: AIRBYTE_API_HOST
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_API_HOST
{{- end }}

{{/*
Renders the global.api.authHeaderName value
*/}}
{{- define "airbyte.common.api.authHeaderName" }}
    {{- .Values.global.api.authHeaderName | default "X-Airbyte-Auth" }}
{{- end }}

{{/*
Renders the common.api.authHeaderName environment variable
*/}}
{{- define "airbyte.common.api.authHeaderName.env" }}
- name: AIRBYTE_API_AUTH_HEADER_NAME
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_API_AUTH_HEADER_NAME
{{- end }}

{{/*
Renders the global.server.host value
*/}}
{{- define "airbyte.common.server.host" }}
    {{- (printf "%s-airbyte-server-svc.%s:%d" .Release.Name .Release.Namespace (int .Values.server.service.port)) }}
{{- end }}

{{/*
Renders the common.server.host environment variable
*/}}
{{- define "airbyte.common.server.host.env" }}
- name: AIRBYTE_SERVER_HOST
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AIRBYTE_SERVER_HOST
{{- end }}

{{/*
Renders the global.api.authEnabled value
*/}}
{{- define "airbyte.common.api.authEnabled" }}
    {{- .Values.global.api.authEnabled | default true }}
{{- end }}

{{/*
Renders the common.api.authEnabled environment variable
*/}}
{{- define "airbyte.common.api.authEnabled.env" }}
- name: API_AUTHORIZATION_ENABLED
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: API_AUTHORIZATION_ENABLED
{{- end }}

{{/*
Renders the global.connectorBuilderServer.apiHost value
*/}}
{{- define "airbyte.common.connectorBuilderServer.apiHost" }}
    {{- (printf "http://%s-airbyte-connector-builder-server-svc.%s:%d" .Release.Name .Release.Namespace (int .Values.connectorBuilderServer.service.port)) }}
{{- end }}

{{/*
Renders the common.connectorBuilderServer.apiHost environment variable
*/}}
{{- define "airbyte.common.connectorBuilderServer.apiHost.env" }}
- name: CONNECTOR_BUILDER_SERVER_API_HOST
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: CONNECTOR_BUILDER_SERVER_API_HOST
{{- end }}

{{/*
Renders the global.deploymentMode value
*/}}
{{- define "airbyte.common.deploymentMode" }}
    {{- upper .Values.global.deploymentMode }}
{{- end }}

{{/*
Renders the common.deploymentMode environment variable
*/}}
{{- define "airbyte.common.deploymentMode.env" }}
- name: DEPLOYMENT_MODE
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: DEPLOYMENT_MODE
{{- end }}

{{/*
Renders the global.api.internalHost value
*/}}
{{- define "airbyte.common.api.internalHost" }}
    {{- (printf "http://%s-airbyte-server-svc.%s:%d" .Release.Name .Release.Namespace (int .Values.server.service.port)) }}
{{- end }}

{{/*
Renders the common.api.internalHost environment variable
*/}}
{{- define "airbyte.common.api.internalHost.env" }}
- name: INTERNAL_API_HOST
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: INTERNAL_API_HOST
{{- end }}

{{/*
Renders the global.local value
*/}}
{{- define "airbyte.common.local" }}
    {{- .Values.global.local | default false }}
{{- end }}

{{/*
Renders the common.local environment variable
*/}}
{{- define "airbyte.common.local.env" }}
- name: LOCAL
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: LOCAL
{{- end }}

{{/*
Renders the global.webapp.url value
*/}}
{{- define "airbyte.common.webapp.url" }}
    {{- (printf "http://%s-airbyte-webapp-svc.%s:%d" .Release.Name .Release.Namespace (int .Values.webapp.service.port)) }}
{{- end }}

{{/*
Renders the common.webapp.url environment variable
*/}}
{{- define "airbyte.common.webapp.url.env" }}
- name: WEBAPP_URL
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: WEBAPP_URL
{{- end }}

{{/*
Renders the set of all common environment variables
*/}}
{{- define "airbyte.common.envs" }}
{{- include "airbyte.common.edition.env" . }}
{{- include "airbyte.common.version.env" . }}
{{- include "airbyte.common.cluster.type.env" . }}
{{- include "airbyte.common.cluster.name.env" . }}
{{- include "airbyte.common.airbyteUrl.env" . }}
{{- include "airbyte.common.api.host.env" . }}
{{- include "airbyte.common.api.authHeaderName.env" . }}
{{- include "airbyte.common.server.host.env" . }}
{{- include "airbyte.common.api.authEnabled.env" . }}
{{- include "airbyte.common.connectorBuilderServer.apiHost.env" . }}
{{- include "airbyte.common.deploymentMode.env" . }}
{{- include "airbyte.common.api.internalHost.env" . }}
{{- include "airbyte.common.local.env" . }}
{{- include "airbyte.common.webapp.url.env" . }}
{{- end }}

{{/*
Renders the set of all common config map variables
*/}}
{{- define "airbyte.common.configVars" }}
AIRBYTE_EDITION: {{ include "airbyte.common.edition" . | quote }}
AIRBYTE_VERSION: {{ include "airbyte.common.version" . | quote }}
AIRBYTE_CLUSTER_TYPE: {{ include "airbyte.common.cluster.type" . | quote }}
AIRBYTE_CLUSTER_NAME: {{ include "airbyte.common.cluster.name" . | quote }}
AIRBYTE_URL: {{ include "airbyte.common.airbyteUrl" . | quote }}
AIRBYTE_API_HOST: {{ include "airbyte.common.api.host" . | quote }}
AIRBYTE_API_AUTH_HEADER_NAME: {{ include "airbyte.common.api.authHeaderName" . | quote }}
AIRBYTE_SERVER_HOST: {{ include "airbyte.common.server.host" . | quote }}
API_AUTHORIZATION_ENABLED: {{ include "airbyte.common.api.authEnabled" . | quote }}
CONNECTOR_BUILDER_SERVER_API_HOST: {{ include "airbyte.common.connectorBuilderServer.apiHost" . | quote }}
DEPLOYMENT_MODE: {{ include "airbyte.common.deploymentMode" . | quote }}
INTERNAL_API_HOST: {{ include "airbyte.common.api.internalHost" . | quote }}
LOCAL: {{ include "airbyte.common.local" . | quote }}
WEBAPP_URL: {{ include "airbyte.common.webapp.url" . | quote }}
{{- end }}
