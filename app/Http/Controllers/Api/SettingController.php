<?php

namespace App\Http\Controllers\Api;

use App\Model\About;
use App\Model\BusinessCategory;
use App\Model\BusinessCategoryImageUpload;
use App\Model\BusinessVideoUpload;
use App\Model\Company;
use App\Model\ContactUs;
use App\Model\FestivalVideoUpload;
use App\Model\GreetingCategory;
use App\Model\GreetingImage;
use App\Model\ImageUpload;
use App\Model\Plan;
use App\Model\Slider;
use App\Model\Video;
use App\Model\VideoCategory;
use App\Model\VideoUpload;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Category;
use Illuminate\Support\Facades\Response;
use Illuminate\Validation\Validator;


class SettingController extends Controller
{


    //ContactUs detail add
    public function contactus_add(Request $request)
    {
//        $validator = Validator::make($request->all(), [
//            'email' => 'required',
//            'contact' => 'required',
//        ]);
//        if ($validator->fails()) {
//            $response['result'] = '0';
//            $response['message'] = $errors = $validator->errors()->first();
//            $response['errors'] = $errors = $validator->errors();
//        } else {
            $auth = \App\User::where('api_token', $request['api_token'])->first();
            if (!empty($auth)) {
                $record = ContactUs::create([
                    'contact' => $request['description'],
                    'email' => $request['email'],
                    'website' => $request['website']

                ]);
                $response['result'] = '1';
                $response['message'] = 'Added successfully';
                $response['record'] = About::find($record->id);

            } else {
                $response['result'] = '0';
                $response['message'] = 'Invalid Token';
            }
     //   }
        return Response::json($response);
    }

    public function plan(Request $request)
    {
        $auth = \App\User::where('api_token', $request['api_token'])->first();
       // if (!empty($auth)) {
            $query = Plan::query();
//            if (!empty($request['search'])) {
//                $query->where('name', 'LIKE', '%' . $request['search'] . '%');
//            }
            $records = $query->paginate();

            $response['result'] = '1';
            $response['message'] = 'success';
            $response['records'] = $records;

      //  } else {
//            $response['result'] = '0';
//            $response['message'] = 'Error';
     //   }
        return Response::json($response);
    }

    public function contactus(Request $request)
    {
       // $auth = \App\User::where('api_token', $request['api_token'])->first();
      //  if (!empty($auth)) {
            $query = ContactUs::query();
//            if (!empty($request['search'])) {
//                $query->where('name', 'LIKE', '%' . $request['search'] . '%');
//            }
            $records = $query->paginate();

            $response['result'] = '1';
            $response['message'] = 'success';
            $response['records'] = $records;

       // } else {
//            $response['result'] = '0';
//            $response['message'] = 'Error';
      //  }
        return Response::json($response);

    }


}
