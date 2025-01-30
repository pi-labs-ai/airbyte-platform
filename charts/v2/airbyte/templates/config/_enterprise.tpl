
{{/* DO NOT EDIT: This file was autogenerated. */}}

{{/*
    Enterprise Configuration
*/}}

{{/*
Renders the enterprise secret name
*/}}
{{- define "airbyte.enterprise.secretName" }}
{{- if .Values.global.enterprise.secretName }}
    {{- .Values.global.enterprise.secretName }}
{{- else }}
    {{- .Values.global.secretName | default (printf "%s-airbyte-secrets" .Release.Name) }}
{{- end }}
{{- end }}

{{/*
Renders the global.enterprise.licenseKey value
*/}}
{{- define "airbyte.enterprise.licenseKey" }}
    {{- .Values.global.enterprise.licenseKey }}
{{- end }}

{{/*
Renders the enterprise.licenseKey secret key
*/}}
{{- define "airbyte.enterprise.licenseKey.secretKey" }}
	{{- .Values.global.enterprise.licenseKeySecretKey | default "AIRBYTE_LICENSE_KEY" }}
{{- end }}

{{/*
Renders the enterprise.licenseKey environment variable
*/}}
{{- define "airbyte.enterprise.licenseKey.env" }}
- name: AIRBYTE_LICENSE_KEY
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.enterprise.secretName" . }}
      key: {{ include "airbyte.enterprise.licenseKey.secretKey" . }}
{{- end }}

{{/*
Renders the set of all enterprise environment variables
*/}}
{{- define "airbyte.enterprise.envs" }}
{{- include "airbyte.enterprise.licenseKey.env" . }}
{{- end }}

{{/*
Renders the set of all enterprise secret variables
*/}}
{{- define "airbyte.enterprise.secrets" }}
AIRBYTE_LICENSE_KEY: {{ include "airbyte.enterprise.licenseKey" . | quote }}
{{- end }}
