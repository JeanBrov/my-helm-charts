{{- define "my-web-app.name" -}}
{{ .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "my-web-app.fullname" -}}
{{ include "my-web-app.name" . }}-{{ .Release.Name }}
{{- end }}
pwd