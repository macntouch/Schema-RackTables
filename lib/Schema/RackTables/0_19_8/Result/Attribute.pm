use utf8;
package Schema::RackTables::0_19_8::Result::Attribute;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_19_8::Result::Attribute

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

=head1 TABLE: C<Attribute>

=cut

__PACKAGE__->table("Attribute");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'enum'
  extra: {list => ["string","uint","float","dict"]}
  is_nullable: 1

=head2 name

  data_type: 'char'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "type",
  {
    data_type => "enum",
    extra => { list => ["string", "uint", "float", "dict"] },
    is_nullable => 1,
  },
  "name",
  { data_type => "char", is_nullable => 1, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);

=head1 RELATIONS

=head2 attribute_maps

Type: has_many

Related object: L<Schema::RackTables::0_19_8::Result::AttributeMap>

=cut

__PACKAGE__->has_many(
  "attribute_maps",
  "Schema::RackTables::0_19_8::Result::AttributeMap",
  { "foreign.attr_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:02:06
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3WsjZkWEHLzjAFBu84yg7w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
