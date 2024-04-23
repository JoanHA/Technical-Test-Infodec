<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveHistoricalRequest;
use App\Models\Historicals;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class HistoricalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): JsonResponse
    {
        $history = Historicals::latest()->take(5)->get();
        return response()->json($history, Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SaveHistoricalRequest $request):JsonResponse
    {
        $historical =  Historicals::create($request->validated());

        return response()->json($historical, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
