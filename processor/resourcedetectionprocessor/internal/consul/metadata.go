// Copyright The OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package consul

import (
	"context"
	"fmt"

	"github.com/hashicorp/consul/api"
)

type consulMetadata interface {
	// Hostname returns the OS hostname
	Hostname(context.Context) (string, error)

	// OSType returns the host operating system
	Datacenter(context.Context) (string, error)

	NodeID(context.Context) (string, error)
}

type consulMetadataImpl struct {
	consulClient *api.Client
}

func newConsulMetadata(config *api.Config) (consulMetadata, error) {
	cli, err := api.NewClient(config)
	if err != nil {
		return nil, fmt.Errorf("could not initialize consul client: %w", err)
	}
	return &consulMetadataImpl{consulClient: cli}, nil
}

func (d *consulMetadataImpl) Hostname(ctx context.Context) (string, error) {
	info, err := d.consulClient.Agent().Self()
	if err != nil {
		return "", fmt.Errorf("failed to fetch consul NodeID type: %w", err)
	}
	return info["Config"]["NodeName"].(string), nil
}

func (d *consulMetadataImpl) Datacenter(ctx context.Context) (string, error) {
	info, err := d.consulClient.Agent().Self()
	if err != nil {
		return "", fmt.Errorf("failed to fetch consul NodeID type: %w", err)
	}
	return info["Config"]["Datacenter"].(string), nil
}

func (d *consulMetadataImpl) NodeID(ctx context.Context) (string, error) {
	info, err := d.consulClient.Agent().Self()
	if err != nil {
		return "", fmt.Errorf("failed to fetch consul NodeID type: %w", err)
	}
	return info["Config"]["NodeID"].(string), nil
}
