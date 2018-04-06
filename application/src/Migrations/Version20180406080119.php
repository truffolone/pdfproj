<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180406080119 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE RadioEav (id INT AUTO_INCREMENT NOT NULL, radio_page_id INT DEFAULT NULL, eav_id INT DEFAULT NULL, ordine SMALLINT DEFAULT 0 NOT NULL, INDEX IDX_88331262352276AF (radio_page_id), UNIQUE INDEX UNIQ_883312629AFD82D5 (eav_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE RadioEav ADD CONSTRAINT FK_88331262352276AF FOREIGN KEY (radio_page_id) REFERENCES radio_pages (id)');
        $this->addSql('ALTER TABLE RadioEav ADD CONSTRAINT FK_883312629AFD82D5 FOREIGN KEY (eav_id) REFERENCES attribute_name_value (id)');
        $this->addSql('DROP TABLE page_attribute_name_values');
        $this->addSql('DROP INDEX name ON roles');
        $this->addSql('DROP INDEX slug ON roles');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL UNIQUE, CHANGE slug slug VARCHAR(64) NOT NULL UNIQUE');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE page_attribute_name_values (radio_page_id INT NOT NULL, attribute_name_value_id INT NOT NULL, INDEX IDX_6A0F8292352276AF (radio_page_id), INDEX IDX_6A0F8292707D1509 (attribute_name_value_id), PRIMARY KEY(radio_page_id, attribute_name_value_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE page_attribute_name_values ADD CONSTRAINT FK_6A0F8292352276AF FOREIGN KEY (radio_page_id) REFERENCES radio_pages (id)');
        $this->addSql('ALTER TABLE page_attribute_name_values ADD CONSTRAINT FK_6A0F8292707D1509 FOREIGN KEY (attribute_name_value_id) REFERENCES attribute_name_value (id)');
        $this->addSql('DROP TABLE RadioEav');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, CHANGE slug slug VARCHAR(64) NOT NULL COLLATE utf8_unicode_ci');
        $this->addSql('CREATE UNIQUE INDEX name ON roles (name)');
        $this->addSql('CREATE UNIQUE INDEX slug ON roles (slug)');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL COLLATE utf8_unicode_ci');
    }
}
