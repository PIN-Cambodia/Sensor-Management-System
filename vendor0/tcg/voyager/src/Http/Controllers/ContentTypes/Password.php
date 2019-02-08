<?php

namespace TCG\Voyager\Http\Controllers\ContentTypes;

class Password extends BaseType
{
    /**
     * Handle password fields.
     *
     * @return string
     */
    public function handle()
    {
        
        return empty($this->request->input($this->row->field)) ? null :
            bcrypt($this->request->input($this->row->field));
        
/*
            return empty($this->request->input($this->row->field)) ? null :
            encrypt($this->request->input($this->row->field));

        */
    }
}
