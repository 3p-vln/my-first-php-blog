<?php

declare(strict_types=1);

namespace Blog\Route;

use Blog\PostMapper;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;
use Twig\Environment;

class PostPage
{
	private PostMapper $postMapper;
	private Environment $viev;

	public function __construct( Environment $viev, PostMapper $postMapper )
	{
		$this->viev = $viev;
		$this->postMapper = $postMapper;
	}
	public function __invoke(ServerRequestInterface $request, ResponseInterface $response, array $args = []): ResponseInterface
	{
		$post = $this->postMapper->getByUrlKey((string) $args["url_key"]);

		if(empty($post)) {
			$body = $this->viev->render("not-found.twig");
		} else {
			$body = $this->viev->render("post.twig", [
				'post' => $post
			]);
		}
		$response->getBody()->write($body);
		return $response;
	}
}