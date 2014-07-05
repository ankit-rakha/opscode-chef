:speech_balloon: ==> INTRODUCTION
===============

Chef is a ruby framework for automating, reusing and documenting server configuration.

:speech_balloon: ==> TERMINOLOGY
===============

// Under construction ..

1) node -> A host where the Chef client will run.
2) Chef client -> The command line program that configures node.
3) Chef server ->
4) chef-repo -> All installations require a central workspace known as the chef-repo. This is a place where primitive objects--cookbooks, roles, environments, data bags, and chef-repo configuration files--are stored and managed. 
5) recipe ->
6) resource ->
7) Knife -> Knife is the [command line interface](http://docs.opscode.com/knife.html) for Chef. The chef-repo contains a .chef directory (which is a hidden directory by default) in which the Knife configuration file (knife.rb) is located. This file contains configuration settings for the chef-repo.

The knife.rb file is automatically created by the starter kit. This file can be customized to support configuration settings used by [cloud provider options](http://docs.opscode.com/plugin_knife.html) and custom [knife plugins](http://docs.opscode.com/plugin_knife_custom.html).
8) cookbook -> A cookbook is the fundamental unit of configuration and policy distribution. A sample cookbook can be found in `cookbooks/starter`. After making changes to any cookbook, you must upload it to the Chef server using knife:

    $ knife upload cookbooks/starter

9) role -> Roles provide logical grouping of cookbooks and other roles.
10) run-list ->
11) attribute ->
12) template ->
13) notification ->
14) .pem file -> Located inside the .chef directory are .pem files, which contain private keys used to authenticate requests made to the Chef server. The USERNAME.pem file contains a private key unique to the user (and should never be shared with anyone). The ORGANIZATION-validator.pem file contains a private key that is global to the entire organization (and is used by all nodes and workstations that send requests to the Chef server).
15) package ->

==> FEATURES
===============

1) Idempotence -> You can run Chef several times, but it won't run same commands after the first run if none of your inputs to it have changed. 
