package Tab::Quiz;
use base 'Tab::DBI';
Tab::Quiz->table('quiz');
Tab::Quiz->columns(Primary => qw/id/);
Tab::Quiz->columns(Essential => qw/tag label questions description badge created_at timestamp/);
Tab::Quiz->columns(Others => qw/sitewide person circuit tourn/);

Tab::Quiz->has_a(person  => 'Tab::Person');
Tab::Quiz->has_a(tourn   => 'Tab::Tourn');
Tab::Quiz->has_a(circuit => 'Tab::Circuit');

Tab::Quiz->has_many(takers => [Tab::PersonQuiz => 'person']);

__PACKAGE__->_register_datetimes( qw/timestamp created_at/);