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
class AssignProjectHandler extends \Mia\Auth\Request\MiaAuthRequestHandler
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
            $project = $this->getForEdit($request);
            //Setea propiedades
            $project->user_id = $this->getParam($request, 'client_id', '');
            //Salva el proyecto
            $project->save();
        } catch (\Exception $exc) {
            return new \Mia\Core\Diactoros\MiaJsonErrorResponse(-2, $exc->getMessage());
        }
        // Devolvemos respuesta
        return new \Mia\Core\Diactoros\MiaJsonResponse($project->toArray());
    }

    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \App\Model\Project
     */
    protected function getForEdit(\Psr\Http\Message\ServerRequestInterface $request)
    {
        // Obtenemos ID si fue enviado
        $itemId = $this->getParam($request, 'project_id', '');
        // Buscar si existe el item en la DB
        $item = \App\Model\Project::find($itemId);
        // verificar si existe
        if($item === null){
            return new \App\Model\Project();
        }
        // Devolvemos item para editar
        return $item;
    }
}
