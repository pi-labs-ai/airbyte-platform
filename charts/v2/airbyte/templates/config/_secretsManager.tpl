
{{/* DO NOT EDIT: This file was autogenerated. */}}

{{/*
    Secretsmanager Configuration
*/}}

{{/*
Renders the secretsManager secret name
*/}}
{{- define "airbyte.secretsManager.secretName" }}
{{- if .Values.global.secretsManager.secretName }}
    {{- .Values.global.secretsManager.secretName }}
{{- else }}
    {{- .Values.global.secretName | default (printf "%s-airbyte-secrets" .Release.Name) }}
{{- end }}
{{- end }}

{{/*
Renders the global.secretsManager.type value
*/}}
{{- define "airbyte.secretsManager.type" }}
    {{- .Values.global.secretsManager.type }}
{{- end }}

{{/*
Renders the secretsManager.type environment variable
*/}}
{{- define "airbyte.secretsManager.type.env" }}
- name: SECRET_PERSISTENCE
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: SECRET_PERSISTENCE
{{- end }}

{{/*
Renders the global.secretsManager.awsSecretManager.accessKeyId value
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.accessKeyId" }}
    {{- .Values.global.secretsManager.awsSecretManager.accessKeyId }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.accessKeyId secret key
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.accessKeyId.secretKey" }}
	{{- .Values.global.secretsManager.awsSecretManager.accessKeyIdSecretKey | default "AWS_SECRET_MANAGER_ACCESS_KEY_ID" }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.accessKeyId environment variable
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.accessKeyId.env" }}
- name: AWS_SECRET_MANAGER_ACCESS_KEY_ID
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.awsSecretManager.accessKeyId.secretKey" . }}
{{- end }}

{{/*
Renders the global.secretsManager.awsSecretManager.secretAccessKey value
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.secretAccessKey" }}
    {{- .Values.global.secretsManager.awsSecretManager.secretAccessKey }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.secretAccessKey secret key
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.secretAccessKey.secretKey" }}
	{{- .Values.global.secretsManager.awsSecretManager.secretAccessKeySecretKey | default "AWS_SECRET_MANAGER_SECRET_ACCESS_KEY" }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.secretAccessKey environment variable
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.secretAccessKey.env" }}
- name: AWS_SECRET_MANAGER_SECRET_ACCESS_KEY
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.awsSecretManager.secretAccessKey.secretKey" . }}
{{- end }}

{{/*
Renders the global.secretsManager.awsSecretManager.region value
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.region" }}
    {{- .Values.global.secretsManager.awsSecretManager.region }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.region environment variable
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.region.env" }}
- name: AWS_SECRET_MANAGER_REGION
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AWS_SECRET_MANAGER_REGION
{{- end }}

{{/*
Renders the global.secretsManager.awsSecretManager.tags value
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.tags" }}
    {{- include "airbyte.tagsToString" .Values.global.secretsManager.awsSecretManager.tags }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.tags environment variable
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.tags.env" }}
- name: AWS_SECRET_MANAGER_SECRET_TAGS
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AWS_SECRET_MANAGER_SECRET_TAGS
{{- end }}

{{/*
Renders the global.secretsManager.awsSecretManager.kmsArn value
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.kmsArn" }}
    {{- .Values.global.secretsManager.awsSecretManager.kmsArn | default "" }}
{{- end }}

{{/*
Renders the secretsManager.awsSecretManager.kmsArn environment variable
*/}}
{{- define "airbyte.secretsManager.awsSecretManager.kmsArn.env" }}
- name: AWS_KMS_KEY_ARN
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AWS_KMS_KEY_ARN
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientId value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientId" }}
    {{- .Values.global.secretsManager.azureKeyVault.clientId }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientId secret key
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientId.secretKey" }}
	{{- .Values.global.secretsManager.azureKeyVault.clientIdSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_ID" }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientId environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientId.env" }}
- name: AB_AZURE_KEY_VAULT_CLIENT_ID
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.azureKeyVault.clientId.secretKey" . }}
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientSecret value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecret" }}
    {{- .Values.global.secretsManager.azureKeyVault.clientSecret }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientSecret secret key
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecret.secretKey" }}
	{{- .Values.global.secretsManager.azureKeyVault.clientSecretSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_SECRET" }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientSecret environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecret.env" }}
- name: AB_AZURE_KEY_VAULT_CLIENT_SECRET
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.azureKeyVault.clientSecret.secretKey" . }}
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.tenantId value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.tenantId" }}
    {{- .Values.global.secretsManager.azureKeyVault.tenantId }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.tenantId environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.tenantId.env" }}
- name: AB_AZURE_KEY_VAULT_TENANT_ID
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_VAULT_TENANT_ID
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.vaultUrl value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.vaultUrl" }}
    {{- .Values.global.secretsManager.azureKeyVault.vaultUrl }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.vaultUrl environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.vaultUrl.env" }}
- name: AB_AZURE_KEY_VAULT_VAULT_URL
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_VAULT_VAULT_URL
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientIdRefName value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientIdRefName" }}
    {{- include "airbyte.secretsManager.secretName" . }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientIdRefName environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientIdRefName.env" }}
- name: AB_AZURE_KEY_CLIENT_ID_REF_NAME
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_CLIENT_ID_REF_NAME
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientIdRefKey value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientIdRefKey" }}
    {{- .Values.global.secretsManager.azureKeyVault.clientIdSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_ID" }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientIdRefKey environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientIdRefKey.env" }}
- name: AB_AZURE_KEY_CLIENT_ID_REF_KEY
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_CLIENT_ID_REF_KEY
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientSecretRefName value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecretRefName" }}
    {{- include "airbyte.secretsManager.secretName" . }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientSecretRefName environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecretRefName.env" }}
- name: AB_AZURE_KEY_CLIENT_SECRET_REF_NAME
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_CLIENT_SECRET_REF_NAME
{{- end }}

{{/*
Renders the global.secretsManager.azureKeyVault.clientSecretRefKey value
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecretRefKey" }}
    {{- .Values.global.secretsManager.azureKeyVault.clientSecretSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_SECRET" }}
{{- end }}

{{/*
Renders the secretsManager.azureKeyVault.clientSecretRefKey environment variable
*/}}
{{- define "airbyte.secretsManager.azureKeyVault.clientSecretRefKey.env" }}
- name: AB_AZURE_KEY_CLIENT_SECRET_REF_KEY
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: AB_AZURE_KEY_CLIENT_SECRET_REF_KEY
{{- end }}

{{/*
Renders the global.secretsManager.googleSecretManager.projectId value
*/}}
{{- define "airbyte.secretsManager.googleSecretManager.projectId" }}
    {{- .Values.global.secretsManager.googleSecretManager.projectId }}
{{- end }}

{{/*
Renders the secretsManager.googleSecretManager.projectId environment variable
*/}}
{{- define "airbyte.secretsManager.googleSecretManager.projectId.env" }}
- name: SECRET_STORE_GCP_PROJECT_ID
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: SECRET_STORE_GCP_PROJECT_ID
{{- end }}

{{/*
Renders the global.secretsManager.googleSecretManager.credentials value
*/}}
{{- define "airbyte.secretsManager.googleSecretManager.credentials" }}
    {{- .Values.global.secretsManager.googleSecretManager.credentials }}
{{- end }}

{{/*
Renders the secretsManager.googleSecretManager.credentials secret key
*/}}
{{- define "airbyte.secretsManager.googleSecretManager.credentials.secretKey" }}
	{{- .Values.global.secretsManager.googleSecretManager.credentialsSecretKey | default "SECRET_STORE_GCP_CREDENTIALS" }}
{{- end }}

{{/*
Renders the secretsManager.googleSecretManager.credentials environment variable
*/}}
{{- define "airbyte.secretsManager.googleSecretManager.credentials.env" }}
- name: SECRET_STORE_GCP_CREDENTIALS
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.googleSecretManager.credentials.secretKey" . }}
{{- end }}

{{/*
Renders the global.secretsManager.vault.address value
*/}}
{{- define "airbyte.secretsManager.vault.address" }}
    {{- .Values.global.secretsManager.vault.address | default (printf "http://airbyte-vault-svc.%s:8200" .Release.Namespace) }}
{{- end }}

{{/*
Renders the secretsManager.vault.address environment variable
*/}}
{{- define "airbyte.secretsManager.vault.address.env" }}
- name: VAULT_ADDRESS
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: VAULT_ADDRESS
{{- end }}

{{/*
Renders the global.secretsManager.vault.prefix value
*/}}
{{- define "airbyte.secretsManager.vault.prefix" }}
    {{- .Values.global.secretsManager.vault.prefix | default "secret/" }}
{{- end }}

{{/*
Renders the secretsManager.vault.prefix environment variable
*/}}
{{- define "airbyte.secretsManager.vault.prefix.env" }}
- name: VAULT_PREFIX
  valueFrom:
    configMapKeyRef:
      name: {{ .Release.Name }}-airbyte-env
      key: VAULT_PREFIX
{{- end }}

{{/*
Renders the global.secretsManager.vault.authToken value
*/}}
{{- define "airbyte.secretsManager.vault.authToken" }}
    {{- .Values.global.secretsManager.vault.authToken }}
{{- end }}

{{/*
Renders the secretsManager.vault.authToken secret key
*/}}
{{- define "airbyte.secretsManager.vault.authToken.secretKey" }}
	{{- .Values.global.secretsManager.vault.authTokenSecretKey | default "VAULT_AUTH_TOKEN" }}
{{- end }}

{{/*
Renders the secretsManager.vault.authToken environment variable
*/}}
{{- define "airbyte.secretsManager.vault.authToken.env" }}
- name: VAULT_AUTH_TOKEN
  valueFrom:
    secretKeyRef:
      name: {{ include "airbyte.secretsManager.secretName" . }}
      key: {{ include "airbyte.secretsManager.vault.authToken.secretKey" . }}
{{- end }}

{{/*
Renders the set of all secretsManager environment variables
*/}}
{{- define "airbyte.secretsManager.envs" }}
{{- include "airbyte.secretsManager.type.env" . }}
{{- $opt := (include "airbyte.secretsManager.type" .) }}

{{- if eq $opt "AWS_SECRET_MANAGER" }}
{{- include "airbyte.secretsManager.awsSecretManager.accessKeyId.env" . }}
{{- include "airbyte.secretsManager.awsSecretManager.secretAccessKey.env" . }}
{{- include "airbyte.secretsManager.awsSecretManager.region.env" . }}
{{- include "airbyte.secretsManager.awsSecretManager.tags.env" . }}
{{- include "airbyte.secretsManager.awsSecretManager.kmsArn.env" . }}
{{- end }}

{{- if eq $opt "AZURE_KEY_VAULT" }}
{{- include "airbyte.secretsManager.azureKeyVault.clientId.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.clientSecret.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.tenantId.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.vaultUrl.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.clientIdRefName.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.clientIdRefKey.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.clientSecretRefName.env" . }}
{{- include "airbyte.secretsManager.azureKeyVault.clientSecretRefKey.env" . }}
{{- end }}

{{- if eq $opt "GOOGLE_SECRET_MANAGER" }}
{{- include "airbyte.secretsManager.googleSecretManager.projectId.env" . }}
{{- include "airbyte.secretsManager.googleSecretManager.credentials.env" . }}
{{- end }}

{{- if eq $opt "TESTING_CONFIG_DB_TABLE" }}
{{- end }}

{{- if eq $opt "VAULT" }}
{{- include "airbyte.secretsManager.vault.address.env" . }}
{{- include "airbyte.secretsManager.vault.prefix.env" . }}
{{- include "airbyte.secretsManager.vault.authToken.env" . }}
{{- end }}

{{- end }}

{{/*
Renders the set of all secretsManager config map variables
*/}}
{{- define "airbyte.secretsManager.configVars" }}
SECRET_PERSISTENCE: {{ include "airbyte.secretsManager.type" . | quote }}
{{- $opt := (include "airbyte.secretsManager.type" .) }}

{{- if eq $opt "AWS_SECRET_MANAGER" }}
AWS_SECRET_MANAGER_REGION: {{ include "airbyte.secretsManager.awsSecretManager.region" . | quote }}
AWS_SECRET_MANAGER_SECRET_TAGS: {{ include "airbyte.tagsToString" .Values.global.secretsManager.awsSecretManager.tags | quote }}
AWS_KMS_KEY_ARN: {{ include "airbyte.secretsManager.awsSecretManager.kmsArn" . | quote }}
{{- end }}

{{- if eq $opt "AZURE_KEY_VAULT" }}
AB_AZURE_KEY_VAULT_TENANT_ID: {{ include "airbyte.secretsManager.azureKeyVault.tenantId" . | quote }}
AB_AZURE_KEY_VAULT_VAULT_URL: {{ include "airbyte.secretsManager.azureKeyVault.vaultUrl" . | quote }}
AB_AZURE_KEY_CLIENT_ID_REF_NAME: {{ include "airbyte.secretsManager.secretName" . | quote }}
AB_AZURE_KEY_CLIENT_ID_REF_KEY: {{ .Values.global.secretsManager.azureKeyVault.clientIdSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_ID" | quote }}
AB_AZURE_KEY_CLIENT_SECRET_REF_NAME: {{ include "airbyte.secretsManager.secretName" . | quote }}
AB_AZURE_KEY_CLIENT_SECRET_REF_KEY: {{ .Values.global.secretsManager.azureKeyVault.clientSecretSecretKey | default "AB_AZURE_KEY_VAULT_CLIENT_SECRET" | quote }}
{{- end }}

{{- if eq $opt "GOOGLE_SECRET_MANAGER" }}
SECRET_STORE_GCP_PROJECT_ID: {{ include "airbyte.secretsManager.googleSecretManager.projectId" . | quote }}
{{- end }}

{{- if eq $opt "TESTING_CONFIG_DB_TABLE" }}
{{- end }}

{{- if eq $opt "VAULT" }}
VAULT_ADDRESS: {{ include "airbyte.secretsManager.vault.address" . | quote }}
VAULT_PREFIX: {{ include "airbyte.secretsManager.vault.prefix" . | quote }}
{{- end }}

{{- end }}

{{/*
Renders the set of all secretsManager secret variables
*/}}
{{- define "airbyte.secretsManager.secrets" }}
{{- $opt := (include "airbyte.secretsManager.type" .) }}

{{- if eq $opt "AWS_SECRET_MANAGER" }}
AWS_SECRET_MANAGER_ACCESS_KEY_ID: {{ include "airbyte.secretsManager.awsSecretManager.accessKeyId" . | quote }}
AWS_SECRET_MANAGER_SECRET_ACCESS_KEY: {{ include "airbyte.secretsManager.awsSecretManager.secretAccessKey" . | quote }}
{{- end }}

{{- if eq $opt "AZURE_KEY_VAULT" }}
AB_AZURE_KEY_VAULT_CLIENT_ID: {{ include "airbyte.secretsManager.azureKeyVault.clientId" . | quote }}
AB_AZURE_KEY_VAULT_CLIENT_SECRET: {{ include "airbyte.secretsManager.azureKeyVault.clientSecret" . | quote }}
{{- end }}

{{- if eq $opt "GOOGLE_SECRET_MANAGER" }}
SECRET_STORE_GCP_CREDENTIALS: {{ include "airbyte.secretsManager.googleSecretManager.credentials" . | quote }}
{{- end }}

{{- if eq $opt "TESTING_CONFIG_DB_TABLE" }}
{{- end }}

{{- if eq $opt "VAULT" }}
VAULT_AUTH_TOKEN: {{ include "airbyte.secretsManager.vault.authToken" . | quote }}
{{- end }}

{{- end }}
