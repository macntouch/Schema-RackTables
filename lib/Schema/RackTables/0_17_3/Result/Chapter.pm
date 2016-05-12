use utf8;
package Schema::RackTables::0_17_3::Result::Chapter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_17_3::Result::Chapter

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

=head1 TABLE: C<Chapter>

=cut

__PACKAGE__->table("Chapter");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 sticky

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["yes","no"]}
  is_nullable: 1

=head2 name

  data_type: 'char'
  is_nullable: 0
  size: 128

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "sticky",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["yes", "no"] },
    is_nullable => 1,
  },
  "name",
  { data_type => "char", is_nullable => 0, size => 128 },
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


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:04:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:w2bOqzpp5/4Z9nznMIAiaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
