<?php

declare(strict_types=1);

namespace Blog\Route;

use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;
use Twig\Environment;

class AboutPage
{
	private Environment $viev;

	public function __construct( Environment $viev)
	{
		$this->viev = $viev;
	}
	public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
	{
		$body = $this->viev->render("about.twig", [
			'name' => 'Vlada'
		]);
		$response->getBody()->write($body);
		return $response;
	}
}