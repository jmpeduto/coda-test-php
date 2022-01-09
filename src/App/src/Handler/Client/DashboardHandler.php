<?php

namespace App\Handler\Client;

use App\Model\Client;
use Illuminate\Database\Capsule\Manager as Capsule;

/**
 * Description of FetchHandler
 * 
 * @OA\Get(
 *     path="/client/dashboard/"
 *     summary="Client Dashboard List",
 *     tags={"Client Dashboard"},
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
class DashboardHandler extends \Mia\Auth\Request\MiaAuthRequestHandler
{
    /**
     * 
     * @param \Psr\Http\Message\ServerRequestInterface $request
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function handle(\Psr\Http\Message\ServerRequestInterface $request): \Psr\Http\Message\ResponseInterface
    {
        $dashboard = null;
        try {
            $dashboard = Capsule::table('client')->select(Capsule::raw('COUNT(id) AS total, DAY(created_at) AS day, MONTH(created_at) AS month'))
            ->whereRaw('created_at >= DATE(now()) - INTERVAL 7 day')
            ->groupBy('day')
            ->groupBy('month')
            ->orderBy('month', 'DESC')
            ->orderBy('day', 'DESC')
            ->get()
        ;
        } catch (\Exception $exc) {
            return new \Mia\Core\Diactoros\MiaJsonErrorResponse(-2, $exc->getMessage());
        }
        // verificar si existe
        if($dashboard === null){
            return \App\Factory\ErrorFactory::notExist();
        }
        // Devolvemos respuesta
        return new \Mia\Core\Diactoros\MiaJsonResponse($dashboard->toArray());
    }
}
