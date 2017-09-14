-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           PostgreSQL 9.1.1, compiled by Visual C++ build 1500, 32-bit
-- OS do Servidor:               
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela public.chamados
CREATE TABLE IF NOT EXISTS "chamados" (
	"id" INTEGER NOT NULL COMMENT E'',
	"cliente_id" INTEGER NOT NULL COMMENT E'',
	"pedido_id" INTEGER NOT NULL COMMENT E'',
	"nome" CHARACTER VARYING NOT NULL COMMENT E'',
	"numero" INTEGER NOT NULL COMMENT E'',
	"email" CHARACTER VARYING NOT NULL COMMENT E'',
	"titulo" CHARACTER VARYING NOT NULL COMMENT E'',
	"observacao" CHARACTER VARYING NULL DEFAULT NULL COMMENT E'',
	"created_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL COMMENT E'',
	"updated_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL COMMENT E'',
	PRIMARY KEY ("id")
);

-- Copiando dados para a tabela public.chamados: 16 rows
/*!40000 ALTER TABLE "chamados" DISABLE KEYS */;
INSERT INTO "chamados" ("id", "cliente_id", "pedido_id", "nome", "numero", "email", "titulo", "observacao", "created_at", "updated_at") VALUES
	(1, 1, 1, E'João', 100, E'joão@email.com', E'Teste 1', E'primeiro teste', E'2017-08-27 08:42:59', E'2017-08-27 08:42:59'),
	(2, 2, 2, E'Maria', 101, E'maria@email.com', E'Teste 2', E'Segundo teste', E'2017-08-27 08:45:50', E'2017-08-27 08:45:50'),
	(3, 2, 2, E'Maria', 101, E'maria@email.com', E'Teste 2', E'Segundo teste', E'2017-08-27 09:09:14', E'2017-08-27 09:09:14'),
	(4, 3, 3, E'Pedro', 102, E'pedro@pedro.com', E'Teste 3', E'Teste teste.....', E'2017-08-27 09:10:35', E'2017-08-27 09:10:35'),
	(5, 4, 5, E'Ana', 103, E'ana@ana.com', E'Teste 4', E'teste ana', E'2017-08-27 09:12:19', E'2017-08-27 09:12:19'),
	(6, 4, 5, E'Ana', 103, E'ana@ana.com', E'Teste 4', E'teste ana', E'2017-08-27 09:12:30', E'2017-08-27 09:12:30'),
	(7, 5, 4, E'Miguel', 104, E'miguel@email.com', E'Teste miguel', E'Obs', E'2017-08-27 09:18:00', E'2017-08-27 09:18:00'),
	(8, 5, 4, E'Miguel', 104, E'miguel@email.com', E'Teste miguel', E'Obs', E'2017-08-27 09:19:28', E'2017-08-27 09:19:28'),
	(9, 5, 4, E'Miguel', 104, E'miguel@email.com', E'Teste miguel', E'Obs', E'2017-08-27 09:19:43', E'2017-08-27 09:19:43'),
	(10, 6, 6, E'Manuel', 105, E'manuel@email.com', E'teste manuel', E'teste teste', E'2017-08-27 09:20:47', E'2017-08-27 09:20:47'),
	(11, 8, 7, E'Isabel', 106, E'email2@email.com', E'chamado', E'chamado!!', E'2017-08-27 09:23:43', E'2017-08-27 09:23:43'),
	(12, 8, 7, E'Isabel', 106, E'email2@email.com', E'chamado', E'chamado!!', E'2017-08-27 09:24:19', E'2017-08-27 09:24:19'),
	(13, 1, 1, E'João', 100, E'email@email.com', E'AAAA', E'Obs AA', E'2017-08-27 09:25:16', E'2017-08-27 09:25:16'),
	(14, 4, 5, E'Ana', 103, E'ana@ana.com', E'Ana 2', E'ana 2', E'2017-08-27 09:26:45', E'2017-08-27 09:26:45'),
	(15, 4, 5, E'Ana', 103, E'ana@ana.com', E'Ana 2', E'ana 2', E'2017-08-27 09:27:06', E'2017-08-27 09:27:06'),
	(16, 8, 7, E'Isabel', 106, E'email2@email.com', E'teste Isabel', E'teste', E'2017-08-27 09:27:46', E'2017-08-27 09:27:46');
/*!40000 ALTER TABLE "chamados" ENABLE KEYS */;

-- Copiando estrutura para tabela public.clientes
CREATE TABLE IF NOT EXISTS "clientes" (
	"id" INTEGER NOT NULL COMMENT E'',
	"nome" CHARACTER VARYING NOT NULL COMMENT E'',
	"email" CHARACTER VARYING NULL DEFAULT NULL COMMENT E'',
	"created_at" TIMESTAMP WITHOUT TIME ZONE NULL DEFAULT NULL COMMENT E'',
	"updated_at" TIMESTAMP WITHOUT TIME ZONE NULL DEFAULT NULL COMMENT E'',
	PRIMARY KEY ("id")
);

-- Copiando dados para a tabela public.clientes: 10 rows
/*!40000 ALTER TABLE "clientes" DISABLE KEYS */;
INSERT INTO "clientes" ("id", "nome", "email", "created_at", "updated_at") VALUES
	(1, E'João', E'joao@email.com', E'2017-08-24 14:33:14', E'2017-08-24 14:33:15'),
	(2, E'Maria', E'maria@email.com', E'2017-08-24 14:33:38', E'2017-08-24 14:33:38'),
	(3, E'Pedro', E'pedro@pedro.com', E'2017-08-24 14:33:51', E'2017-08-24 14:33:52'),
	(4, E'Ana', E'ana@ana.com', E'2017-08-24 14:35:14', E'2017-08-24 14:35:14'),
	(5, E'Miguel', E'miguel@email.com', E'2017-08-24 14:35:28', E'2017-08-24 14:35:29'),
	(6, E'Manuel', E'manuel@email.com', E'2017-08-24 14:36:22', E'2017-08-27 09:20:47'),
	(7, E'Claudia', NULL, E'2017-08-24 14:36:35', E'2017-08-24 14:36:35'),
	(8, E'Isabel', E'email2@email.com', E'2017-08-24 14:36:50', E'2017-08-25 14:14:20'),
	(9, E'Juliana', NULL, E'2017-08-24 14:37:05', E'2017-08-24 14:37:05'),
	(10, E'Fabiana', NULL, E'2017-08-24 14:37:18', E'2017-08-24 14:37:18');
/*!40000 ALTER TABLE "clientes" ENABLE KEYS */;

-- Copiando estrutura para tabela public.pedidos
CREATE TABLE IF NOT EXISTS "pedidos" (
	"id" INTEGER NOT NULL COMMENT E'',
	"cliente_id" INTEGER NOT NULL COMMENT E'',
	"numero" INTEGER NOT NULL COMMENT E'',
	"created_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL COMMENT E'',
	"updated_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL COMMENT E'',
	PRIMARY KEY ("id")
);

-- Copiando dados para a tabela public.pedidos: 10 rows
/*!40000 ALTER TABLE "pedidos" DISABLE KEYS */;
INSERT INTO "pedidos" ("id", "cliente_id", "numero", "created_at", "updated_at") VALUES
	(1, 1, 100, E'2017-08-24 14:37:53', E'2017-08-24 14:37:54'),
	(2, 2, 101, E'2017-08-24 14:38:10', E'2017-08-24 14:38:10'),
	(3, 3, 102, E'2017-08-24 14:38:22', E'2017-08-24 14:38:23'),
	(4, 5, 104, E'2017-08-24 14:38:39', E'2017-08-24 14:38:39'),
	(5, 4, 103, E'2017-08-24 14:38:52', E'2017-08-24 14:38:53'),
	(6, 6, 105, E'2017-08-24 14:39:05', E'2017-08-24 14:39:05'),
	(7, 8, 106, E'2017-08-24 14:39:23', E'2017-08-24 14:39:24'),
	(8, 7, 107, E'2017-08-24 14:39:39', E'2017-08-24 14:39:39'),
	(9, 10, 108, E'2017-08-24 14:39:54', E'2017-08-24 14:39:55'),
	(10, 9, 110, E'2017-08-24 14:40:07', E'2017-08-24 14:40:08');
/*!40000 ALTER TABLE "pedidos" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
