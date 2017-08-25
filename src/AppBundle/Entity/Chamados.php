<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Chamados
 *
 * @ORM\Table(name="chamados")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ChamadosRepository")
 */
class Chamados
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="cliente_id", type="integer")
     */
    /**
     * @ORM\ManyToMany(targetEntity="Clientes", mappedBy="id")
     * @ORM\JoinColumn(name="cliente_id", referencedColumnName="id")
     */
    private $clienteId;

    /**
     * @var int
     *
     * @ORM\Column(name="pedido_id", type="integer")
     */
    /**
     * @ORM\ManyToMany(targetEntity="Pedidos", mappedBy="id")
     * @ORM\JoinColumn(name="pedido_id", referencedColumnName="id")
     */
    private $pedidoId;

    /**
     * @var string
     *
     * @ORM\Column(name="nome", type="string", length=255)
     */
    private $nome;

    /**
     * @var int
     *
     * @ORM\Column(name="numero", type="integer")
     */
    private $numero;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255)
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="titulo", type="string", length=255)
     */
    private $titulo;

    /**
     * @var string
     *
     * @ORM\Column(name="observacao", type="text")
     */
    private $observacao;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetime")
     */
    private $createdAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="updated_at", type="datetime")
     */
    private $updatedAt;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set clienteId
     *
     * @param integer $clienteId
     *
     * @return Chamados
     */
    public function setClienteId($clienteId)
    {
        $this->clienteId = $clienteId;

        return $this;
    }

    /**
     * Get clienteId
     *
     * @return int
     */
    public function getClienteId()
    {
        return $this->clienteId;
    }

    /**
     * Set pedidoId
     *
     * @param integer $pedidoId
     *
     * @return Chamados
     */
    public function setPedidoId($pedidoId)
    {
        $this->pedidoId = $pedidoId;

        return $this;
    }

    /**
     * Get pedidoId
     *
     * @return int
     */
    public function getPedidoId()
    {
        return $this->pedidoId;
    }

    /**
     * Set nome
     *
     * @param string $nome
     *
     * @return Clientes
     */
    public function setNome($nome)
    {
        $this->nome = $nome;

        return $this;
    }

    /**
     * Get nome
     *
     * @return string
     */
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * Set numero
     *
     * @param integer $numero
     *
     * @return Pedidos
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get numero
     *
     * @return int
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set email
     *
     * @param string $email
     *
     * @return Chamados
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set titulo
     *
     * @param string $titulo
     *
     * @return Chamados
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set observacao
     *
     * @param string $observacao
     *
     * @return Chamados
     */
    public function setObservacao($observacao)
    {
        $this->observacao = $observacao;

        return $this;
    }

    /**
     * Get observacao
     *
     * @return string
     */
    public function getObservacao()
    {
        return $this->observacao;
    }

    /**
     * Set createdAt
     *
     * @param \DateTime $createdAt
     *
     * @return Chamados
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get createdAt
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * Set updatedAt
     *
     * @param \DateTime $updatedAt
     *
     * @return Chamados
     */
    public function setUpdatedAt($updatedAt)
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    /**
     * Get updatedAt
     *
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }
}

