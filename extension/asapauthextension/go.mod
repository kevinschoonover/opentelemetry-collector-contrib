module github.com/open-telemetry/opentelemetry-collector-contrib/extension/asapauthextension

go 1.22.0

require (
	bitbucket.org/atlassian/go-asap/v2 v2.9.0
	github.com/SermoDigital/jose v0.9.2-0.20180104203859-803625baeddc
	github.com/stretchr/testify v1.10.0
	go.opentelemetry.io/collector/component v0.117.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/component/componenttest v0.117.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/config/configopaque v1.23.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/confmap v1.23.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/extension v0.117.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/extension/auth v0.117.1-0.20250117002813-e970f8bb1258
	go.opentelemetry.io/collector/extension/extensiontest v0.117.1-0.20250117002813-e970f8bb1258
	go.uber.org/multierr v1.11.0
	google.golang.org/grpc v1.69.4
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-viper/mapstructure/v2 v2.2.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/knadh/koanf/maps v0.1.1 // indirect
	github.com/knadh/koanf/providers/confmap v0.1.0 // indirect
	github.com/knadh/koanf/v2 v2.1.2 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	github.com/vincent-petithory/dataurl v1.0.0 // indirect
	go.opentelemetry.io/collector/config/configtelemetry v0.117.1-0.20250117002813-e970f8bb1258 // indirect
	go.opentelemetry.io/collector/pdata v1.23.1-0.20250117002813-e970f8bb1258 // indirect
	go.opentelemetry.io/otel v1.32.0 // indirect
	go.opentelemetry.io/otel/metric v1.32.0 // indirect
	go.opentelemetry.io/otel/sdk v1.32.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.32.0 // indirect
	go.opentelemetry.io/otel/trace v1.32.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/net v0.33.0 // indirect
	golang.org/x/sys v0.28.0 // indirect
	golang.org/x/text v0.21.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20241015192408-796eee8c2d53 // indirect
	google.golang.org/protobuf v1.36.2 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

retract (
	v0.76.2
	v0.76.1
	v0.65.0
)
