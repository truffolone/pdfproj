<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180405094237 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP INDEX name ON roles');
        $this->addSql('DROP INDEX slug ON roles');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL UNIQUE, CHANGE slug slug VARCHAR(64) NOT NULL UNIQUE');
        $this->addSql('ALTER TABLE attribute_name_value ADD ordine SMALLINT DEFAULT 0 NOT NULL');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE attribute_name_value DROP ordine');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, CHANGE slug slug VARCHAR(64) NOT NULL COLLATE utf8_unicode_ci');
        $this->addSql('CREATE UNIQUE INDEX name ON roles (name)');
        $this->addSql('CREATE UNIQUE INDEX slug ON roles (slug)');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL COLLATE utf8_unicode_ci');
    }
}