{{- define "global_labels" }}
environment: {{ .Values.globals.environment }}
app: {{ .Values.globals.appname }}
{{- end}}

{{- define "dbservice.labels" }}
{{- include "global_labels" . }}
app.kuberenetes.io/name: {{ .Values.services.db.service.serviceName }}
{{- end }}

{{- define "dbcluster.labels" }}
{{- include "global_labels" . }}
app.kuberenetes.io/name: {{ .Values.services.db.cluster.clusterName }}
{{- end }}