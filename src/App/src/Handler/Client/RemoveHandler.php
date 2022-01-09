<?php

namespace App\Handler\Client;

/**
 * Description of FetchHandler
 * 
 * @OA\Get(
 *     path="/client/remove/{id}",
 *     summary="Client Remove",
 *     tags={"Client Remove"},
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
class RemoveHandler extends \Mia\Auth\Request\MiaAuthRequestHandler
{
    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function handle(\Psr\Http\Message\ServerRequestInterface $request): \Psr\Http\Message\ResponseInterface
    {

        // // Obtenemos APELLIDO si fue enviado
        $clientId = $this->getParam($request, 'id', '');
        //Busca el cliente por id
        $client = \App\Model\Client::find($clientId);

        // Verificar si existe
        if ($client === null) {
            return \App\Factory\ErrorFactory::notExist();
        } else {
            // Setea deleted = 1 para el cliente
            try {
                $client->deleted = 1;
                $client->save();
            } catch (\Exception $exc) {
                return new \Mia\Core\Diactoros\MiaJsonErrorResponse(-2, $exc->getMessage());
            }
        }
        // Devolvemos respuesta
        return new \Mia\Core\Diactoros\MiaJsonResponse($client->toArray());
    }
}
