<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180307115455 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE main_page_category_applications DROP FOREIGN KEY FK_DD8411E2DF1349F0');
        $this->addSql('CREATE TABLE applications_categories (application_id INT NOT NULL, category_id INT NOT NULL, INDEX IDX_ED480D0B3E030ACD (application_id), INDEX IDX_ED480D0B12469DE2 (category_id), PRIMARY KEY(application_id, category_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE main_page_applications (main_page_id INT NOT NULL, application_id INT NOT NULL, INDEX IDX_2EE318C3F80DCA0D (main_page_id), INDEX IDX_2EE318C33E030ACD (application_id), PRIMARY KEY(main_page_id, application_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE applications_categories ADD CONSTRAINT FK_ED480D0B3E030ACD FOREIGN KEY (application_id) REFERENCES applications (id)');
        $this->addSql('ALTER TABLE applications_categories ADD CONSTRAINT FK_ED480D0B12469DE2 FOREIGN KEY (category_id) REFERENCES categories (id)');
        $this->addSql('ALTER TABLE main_page_applications ADD CONSTRAINT FK_2EE318C3F80DCA0D FOREIGN KEY (main_page_id) REFERENCES main_pages (id)');
        $this->addSql('ALTER TABLE main_page_applications ADD CONSTRAINT FK_2EE318C33E030ACD FOREIGN KEY (application_id) REFERENCES applications (id)');
        $this->addSql('DROP TABLE category_applications');
        $this->addSql('DROP TABLE main_page_category_applications');
        $this->addSql('DROP INDEX name ON roles');
        $this->addSql('DROP INDEX slug ON roles');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL UNIQUE, CHANGE slug slug VARCHAR(64) NOT NULL UNIQUE');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE category_applications (id INT AUTO_INCREMENT NOT NULL, category_id INT DEFAULT NULL, application_id INT DEFAULT NULL, createdAt DATETIME NOT NULL, updatedAt DATETIME NOT NULL, deletedAt DATETIME DEFAULT NULL, INDEX IDX_2D1E456212469DE2 (category_id), INDEX IDX_2D1E45623E030ACD (application_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE main_page_category_applications (main_page_id INT NOT NULL, category_application_id INT NOT NULL, INDEX IDX_DD8411E2F80DCA0D (main_page_id), INDEX IDX_DD8411E2DF1349F0 (category_application_id), PRIMARY KEY(main_page_id, category_application_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE category_applications ADD CONSTRAINT FK_2D1E456212469DE2 FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE category_applications ADD CONSTRAINT FK_2D1E45623E030ACD FOREIGN KEY (application_id) REFERENCES applications (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE main_page_category_applications ADD CONSTRAINT FK_DD8411E2DF1349F0 FOREIGN KEY (category_application_id) REFERENCES category_applications (id)');
        $this->addSql('ALTER TABLE main_page_category_applications ADD CONSTRAINT FK_DD8411E2F80DCA0D FOREIGN KEY (main_page_id) REFERENCES main_pages (id)');
        $this->addSql('DROP TABLE applications_categories');
        $this->addSql('DROP TABLE main_page_applications');
        $this->addSql('ALTER TABLE roles CHANGE name name VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, CHANGE slug slug VARCHAR(64) NOT NULL COLLATE utf8_unicode_ci');
        $this->addSql('CREATE UNIQUE INDEX name ON roles (name)');
        $this->addSql('CREATE UNIQUE INDEX slug ON roles (slug)');
        $this->addSql('ALTER TABLE sessions CHANGE sess_id sess_id VARCHAR(128) NOT NULL COLLATE utf8_unicode_ci');
    }
}
