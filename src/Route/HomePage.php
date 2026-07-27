<?php

declare(strict_types=1);

namespace Blog\Route;

use Blog\Database;
use Blog\LatestPosts;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Twig\Environment;

class HomePage
{
	private LatestPosts $latestPosts;
	private Environment $viev;

	public function __construct(LatestPosts $latestPosts, Environment $viev)
	{
		$this->latestPosts = $latestPosts;
		$this->viev = $viev;
	}

	public function execute (Request $request, Response $response) : Response
	{
		$posts = $this->latestPosts->get(2);

	  $body = $this->viev->render("index.twig", [
			"posts" => $posts
	  ]);

	  $response->getBody()->write($body);
	  return $response;
	}

}