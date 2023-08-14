<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Complement;
use App\ComplementSpecial;
use App\MenuMapping;
use App\Invitation;
use App\Log;

class ComplementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $complements = Complement::all();
        $page = MenuMapping::getMap(session('user_id'),"IVCM");

        return view('complement.index', compact('complements', 'page'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page = MenuMapping::getMap(session('user_id'),"IVCM");
        $complements = Complement::select('invitation_id')->get();
        $invitation = Invitation::whereNotIn('Invitation_id', $complements)->get();
        return view('complement.form',compact('invitation', 'page'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            $icon = null;
            // Upload Foto
            if($request->icon <> NULL || $request->icon <> '' && $request->icon->getClientOriginalExtension() == "ico"){
                $icon = 'icon.'.$request->icon->getClientOriginalExtension();
                $request->icon->move(public_path('multimedia/'.$request->invitation_id.'/'),$icon);
            }

            $song = null;
            // Upload Foto
            if($request->song <> NULL || $request->song <> ''){
                $song = $request->song->getClientOriginalName();
                $request->song->move(public_path('multimedia/'.$request->invitation_id.'/'),$song);
            }

            $banner = null;
            // Upload Foto
            if($request->banner <> NULL || $request->banner <> ''){
                $banner = $request->banner->getClientOriginalName();
                $request->banner->move(public_path('multimedia/'.$request->invitation_id.'/'),$banner);
            }

            $complement = new Complement(array(
                // Informasi Pribadi
                'invitation_id' => $request->invitation_id,
                'icon' => $icon,
                'song' => $song,
                'banner' => $banner,
                'creator' => session('user_id'),
            ));
            $complement->save();

            Log::setLog('IVCMC','Create Complement: '.$request->inv_id);

            return redirect()->route('complement.index')->with('status', 'Data berhasil dibuat');
        }catch(\Exception $e){
            return redirect()->back()->withErrors($e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $invitation = Invitation::all();
        $complement = Complement::where('id', $id)->first();
        $specialname = ComplementSpecial::where('invitation_id', $complement->invitation_id)->get();
        return view('complement.form', compact('invitation','complement','specialname'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try{
            $complement = Complement::where('id',$id)->first();
            // Upload Foto
            if($request->icon <> NULL || $request->icon <> '' && $request->icon->getClientOriginalExtension() == "ico"){
                if (file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->icon) && $complement->icon != null) {
                    unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->icon);
                }

                $icon = 'icon.'.$request->icon->getClientOriginalExtension();
                $request->icon->move(public_path('multimedia/'.$request->inv_id.'/'),$icon);
            }else{
                $icon = $complement->icon;
            }

            $song = null;
            // Upload Foto
            if($request->song <> NULL || $request->song <> ''){
                if (file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song) && $complement->song != null) {
                    unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song);
                }

                $song = $request->song->getClientOriginalName();
                $request->song->move(public_path('multimedia/'.$request->inv_id.'/'),$song);
            }else{
                $song = $complement->song;
            }

            $song2 = null;
            // Upload Foto
            if($request->song2 <> NULL || $request->song2 <> ''){
                if (file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song2) && $complement->song2 != null) {
                    unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song2);
                }

                $song2 = $request->song2->getClientOriginalName();
                $request->song2->move(public_path('multimedia/'.$request->inv_id.'/'),$song2);
            }else{
                $song2 = $complement->song2;
            }

            $banner = null;
            // Upload Foto
            if($request->banner <> null || $request->banner <> ''){
                if (file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->banner) && $complement->banner != null) {
                    unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->banner);
                }

                $banner = $request->banner->getClientOriginalName();
                $request->banner->move(public_path('multimedia/'.$request->inv_id.'/'),$banner);
            }else{
                $banner = $complement->banner;
            }

            $complement->icon = $icon;
            $complement->song = $song;
            $complement->song2 = $song2;
            $complement->banner = $banner;
            $complement->creator = session('user_id');
            $complement->save();

            if(count($request->list_names) != 0 AND ComplementSpecial::where('invitation_id', $complement->invitation_id)->count() != 0){
                ComplementSpecial::where('invitation_id', $complement->invitation_id)->delete();
            }
        
            foreach($request->list_names as $name){
                $list_names = new ComplementSpecial(array(
                    "invitation_id" => $complement->invitation_id,
                    "name" => $name,
                    "creator" => session('user_id'),
                ));
                $list_names->save();
            }

            Log::setLog('IVCMU','Update Complement: '.$complement->invitation_id);

            return redirect()->route('complement.index')->with('status', 'Data berhasil dibuat');
        }catch(\Exception $e){
            return redirect()->back()->withErrors($e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $complement = Complement::where('invitation_id', $id)->first();
        if(file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->icon)){
            unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->icon);
        }

        if(file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song)){
            unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->song);
        }

        if(file_exists(public_path('multimedia/'.$complement->invitation_id.'/').$complement->banner)){
            unlink(public_path('multimedia/'.$complement->invitation_id.'/').$complement->banner);
        }
        $complement->delete();
        Log::setLog('IVCMD', 'Delete Complement: '.$id);
        return "true";
    }
}
