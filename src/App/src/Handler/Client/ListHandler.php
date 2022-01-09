<?php

namespace App\Handler\Client;

/**
 * Description of FetchHandler
 * 
 * @OA\Get(
 *     path="/client/list",
 *     summary="Client List",
 *     tags={"Client"},
 *     @OA\Response(
 *          response=200,
 *          description="successful operation",
 *          @OA\JsonContent(ref="#/components/schemas/Client")
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 *
 * @author jmpeduto
 */
class ListHandler extends \Mia\Auth\Request\MiaAuthRequestHandler
{
    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function handle(\Psr\Http\Message\ServerRequestInterface $request): \Psr\Http\Message\ResponseInterface
    {
       
        // Obtenemos APELLIDO si fue enviado
        $clientLastname = $this->getParam($request, 'lastname', '');
        //Busca cliente por el parametro apellido si existe o devuelve todos
        $clients = !empty($clientLastname) ? \App\Model\Client::where('lastname', 'LIKE', '%'.$clientLastname.'%')->firstOrFail() : \App\Model\Client::all();
        // verificar si existe
        if($clients === null){
            return \App\Factory\ErrorFactory::notExist();
        }
        // Devolvemos respuesta
        return new \Mia\Core\Diactoros\MiaJsonResponse($clients->toArray());
    }
}