use utf8;
package Schema::RackTables::0_18_4::Result::IPv4Network;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_18_4::Result::IPv4Network

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

=head1 TABLE: C<IPv4Network>

=cut

__PACKAGE__->table("IPv4Network");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ip

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 mask

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 name

  data_type: 'char'
  is_nullable: 1
  size: 255

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ip",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "mask",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "name",
  { data_type => "char", is_nullable => 1, size => 255 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<base-len>

=over 4

=item * L</ip>

=item * L</mask>

=back

=cut

__PACKAGE__->add_unique_constraint("base-len", ["ip", "mask"]);

=head1 RELATIONS

=head2 vlanipv4s

Type: has_many

Related object: L<Schema::RackTables::0_18_4::Result::VLANIPv4>

=cut

__PACKAGE__->has_many(
  "vlanipv4s",
  "Schema::RackTables::0_18_4::Result::VLANIPv4",
  { "foreign.ipv4net_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:03:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:G9TfuvE0tBj7m81FZRR8nQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
