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

{{- define "mqttbroker.deploymentlabels" }}
{{- include "global_labels" . }}
app.kuberenetes.io/name: {{ .Values.services.mqtt.broker.brokerName }}-deployment
{{- end }}

{{- define "mqttbroker.matchlabels" }}
app.kuberenetes.io/name: {{ .Values.services.mqtt.broker.brokerName }}
{{- end }}

{{- define "mqttbroker.brokerlabels" }}
{{- include "global_labels" . }}
{{- include "mqttbroker.matchlabels" . }}
{{- end }}

{{- define "mqttbroker.servicelabels" }}
{{- include "global_labels" . }}
app.kuberenetes.io/name: {{ .Values.services.mqtt.service.serviceName }}
{{- end }}