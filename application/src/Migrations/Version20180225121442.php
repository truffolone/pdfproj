<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180225121442 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE applications (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, createdAt DATETIME NOT NULL, updatedAt DATETIME NOT NULL, deletedAt DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE application_translations (id INT AUTO_INCREMENT NOT NULL, object_id INT DEFAULT NULL, locale VARCHAR(8) NOT NULL, field VARCHAR(32) NOT NULL, content LONGTEXT DEFAULT NULL, INDEX IDX_65A211DE232D562B (object_id), UNIQUE INDEX lookup_unique_idx (locale, object_id, field), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categories (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description LONGTEXT DEFAULT NULL, createdAt DATETIME NOT NULL, updatedAt DATETIME NOT NULL, deletedAt DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE category_translations (id INT AUTO_INCREMENT NOT NULL, object_id INT DEFAULT NULL, locale VARCHAR(8) NOT NULL, field VARCHAR(32) NOT NULL, content LONGTEXT DEFAULT NULL, INDEX IDX_1C60F915232D562B (object_id), UNIQUE INDEX lookup_unique_idx (locale, object_id, field), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE products (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description LONGTEXT DEFAULT NULL, createdAt DATETIME NOT NULL, updatedAt DATETIME NOT NULL, deletedAt DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE product_translations (id INT AUTO_INCREMENT NOT NULL, object_id INT DEFAULT NULL, locale VARCHAR(8) NOT NULL, field VARCHAR(32) NOT NULL, content LONGTEXT DEFAULT NULL, INDEX IDX_4B13F8EC232D562B (object_id), UNIQUE INDEX lookup_unique_idx (locale, object_id, field), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE application_translations ADD CONSTRAINT FK_65A211DE232D562B FOREIGN KEY (object_id) REFERENCES applications (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE category_translations ADD CONSTRAINT FK_1C60F915232D562B FOREIGN KEY (object_id) REFERENCES categories (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE product_translations ADD CONSTRAINT FK_4B13F8EC232D562B FOREIGN KEY (object_id) REFERENCES products (id) ON DELETE CASCADE');
        $this->addSql('DROP INDEX name ON roles');
        $this->addSql('DROP INDEX slug ON roles');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL UNIQUE, CHANGE slug slug VARCHAR(64) NOT NULL UNIQUE');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE application_translations DROP FOREIGN KEY FK_65A211DE232D562B');
        $this->addSql('ALTER TABLE category_translations DROP FOREIGN KEY FK_1C60F915232D562B');
        $this->addSql('ALTER TABLE product_translations DROP FOREIGN KEY FK_4B13F8EC232D562B');
        $this->addSql('DROP TABLE applications');
        $this->addSql('DROP TABLE application_translations');
        $this->addSql('DROP TABLE categories');
        $this->addSql('DROP TABLE category_translations');
        $this->addSql('DROP TABLE products');
        $this->addSql('DROP TABLE product_translations');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, CHANGE slug slug VARCHAR(64) NOT NULL COLLATE utf8_unicode_ci');
        $this->addSql('CREATE UNIQUE INDEX name ON roles (name)');
        $this->addSql('CREATE UNIQUE INDEX slug ON roles (slug)');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL COLLATE utf8_unicode_ci');
    }
}
