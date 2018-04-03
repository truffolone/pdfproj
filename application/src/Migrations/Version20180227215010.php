<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180227215010 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE radio_pages (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL, createdAt DATETIME NOT NULL, updatedAt DATETIME NOT NULL, deletedAt DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE page_attribute_name_values (radio_page_id INT NOT NULL, attribute_name_value_id INT NOT NULL, INDEX IDX_6A0F8292352276AF (radio_page_id), INDEX IDX_6A0F8292707D1509 (attribute_name_value_id), PRIMARY KEY(radio_page_id, attribute_name_value_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE radio_page_translations (id INT AUTO_INCREMENT NOT NULL, object_id INT DEFAULT NULL, locale VARCHAR(8) NOT NULL, field VARCHAR(32) NOT NULL, content LONGTEXT DEFAULT NULL, INDEX IDX_91FCC360232D562B (object_id), UNIQUE INDEX lookup_unique_idx (locale, object_id, field), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE page_attribute_name_values ADD CONSTRAINT FK_6A0F8292352276AF FOREIGN KEY (radio_page_id) REFERENCES radio_pages (id)');
        $this->addSql('ALTER TABLE page_attribute_name_values ADD CONSTRAINT FK_6A0F8292707D1509 FOREIGN KEY (attribute_name_value_id) REFERENCES attribute_name_value (id)');
        $this->addSql('ALTER TABLE radio_page_translations ADD CONSTRAINT FK_91FCC360232D562B FOREIGN KEY (object_id) REFERENCES radio_pages (id) ON DELETE CASCADE');
        $this->addSql('DROP INDEX name ON roles');
        $this->addSql('DROP INDEX slug ON roles');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL UNIQUE, CHANGE slug slug VARCHAR(64) NOT NULL UNIQUE');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE page_attribute_name_values DROP FOREIGN KEY FK_6A0F8292352276AF');
        $this->addSql('ALTER TABLE radio_page_translations DROP FOREIGN KEY FK_91FCC360232D562B');
        $this->addSql('DROP TABLE radio_pages');
        $this->addSql('DROP TABLE page_attribute_name_values');
        $this->addSql('DROP TABLE radio_page_translations');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, CHANGE slug slug VARCHAR(64) NOT NULL COLLATE utf8_unicode_ci');
        $this->addSql('CREATE UNIQUE INDEX name ON roles (name)');
        $this->addSql('CREATE UNIQUE INDEX slug ON roles (slug)');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL COLLATE utf8_unicode_ci');
    }
}
