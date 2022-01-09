<?php

namespace App\Handler\Client;

/**
 * Description of FetchHandler
 * 
 * @OA\Get(
 *     path="/client/remove/{id}",
 *     summary="Client Save",
 *     tags={"Client Save"},
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
class SaveHandler extends \Mia\Auth\Request\MiaAuthRequestHandler
{
    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function handle(\Psr\Http\Message\ServerRequestInterface $request): \Psr\Http\Message\ResponseInterface
    {
        try {
            //Busca el cliente si el parametro ID fue enviado
            $client = $this->getForEdit($request);
            //Setea propiedades
            $client->firstname = $this->getParam($request, 'firstname', '');
            $client->lastname = $this->getParam($request, 'lastname', '');
            $client->email = $this->getParam($request, 'email', '');
            $client->phone = $this->getParam($request, 'phone', '');
            $client->photo = $this->getParam($request, 'photo', '');
            //Salva el cliente
            $client->save();
        } catch (\Exception $exc) {
            return new \Mia\Core\Diactoros\MiaJsonErrorResponse(-2, $exc->getMessage());
        }
        // Devolvemos respuesta
        return new \Mia\Core\Diactoros\MiaJsonResponse($client->toArray());
    }

    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \App\Model\Client
     */
    protected function getForEdit(\Psr\Http\Message\ServerRequestInterface $request)
    {
        // Obtenemos ID si fue enviado
        $itemId = $this->getParam($request, 'id', '');
        // Buscar si existe el item en la DB
        $item = \App\Model\Client::find($itemId);
        // verificar si existe
        if($item === null){
            return new \App\Model\Client();
        }
        // Devolvemos item para editar
        return $item;
    }
}
