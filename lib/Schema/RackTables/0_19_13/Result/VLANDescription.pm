use utf8;
package Schema::RackTables::0_19_13::Result::VLANDescription;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_19_13::Result::VLANDescription

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<VLANDescription>

=cut

__PACKAGE__->table("VLANDescription");

=head1 ACCESSORS

=head2 domain_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 vlan_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 vlan_type

  data_type: 'enum'
  default_value: 'ondemand'
  extra: {list => ["ondemand","compulsory","alien"]}
  is_nullable: 0

=head2 vlan_descr

  data_type: 'char'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "domain_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "vlan_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "vlan_type",
  {
    data_type => "enum",
    default_value => "ondemand",
    extra => { list => ["ondemand", "compulsory", "alien"] },
    is_nullable => 0,
  },
  "vlan_descr",
  { data_type => "char", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</domain_id>

=item * L</vlan_id>

=back

=cut

__PACKAGE__->set_primary_key("domain_id", "vlan_id");

=head1 RELATIONS

=head2 domain

Type: belongs_to

Related object: L<Schema::RackTables::0_19_13::Result::VLANDomain>

=cut

__PACKAGE__->belongs_to(
  "domain",
  "Schema::RackTables::0_19_13::Result::VLANDomain",
  { id => "domain_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "RESTRICT" },
);

=head2 vlan

Type: belongs_to

Related object: L<Schema::RackTables::0_19_13::Result::VLANValidID>

=cut

__PACKAGE__->belongs_to(
  "vlan",
  "Schema::RackTables::0_19_13::Result::VLANValidID",
  { vlan_id => "vlan_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

=head2 vlanipv4s

Type: has_many

Related object: L<Schema::RackTables::0_19_13::Result::VLANIPv4>

=cut

__PACKAGE__->has_many(
  "vlanipv4s",
  "Schema::RackTables::0_19_13::Result::VLANIPv4",
  {
    "foreign.domain_id" => "self.domain_id",
    "foreign.vlan_id"   => "self.vlan_id",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vlanipv6s

Type: has_many

Related object: L<Schema::RackTables::0_19_13::Result::VLANIPv6>

=cut

__PACKAGE__->has_many(
  "vlanipv6s",
  "Schema::RackTables::0_19_13::Result::VLANIPv6",
  {
    "foreign.domain_id" => "self.domain_id",
    "foreign.vlan_id"   => "self.vlan_id",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:02:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7H+1sxoIiVMiEg84XoFhqg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
