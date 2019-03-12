<?php

use Illuminate\Database\Seeder;

class UsertokensTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('usertokens')->delete();
        
        \DB::table('usertokens')->insert(array (
            0 => 
            array (
                'id' => 37,
                'user_id' => 1,
                'api_token' => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjZkYmRjYmZhMjFlNGEzM2E4Mzg4NTdmOGUwZGM1ZWU5MzQ4YTUxYjMwZGMwMGYyODc4ZmY2NmM0MjQwOTk3NjFmM2Q0NzliZTlmYzJhNTQ3In0.eyJhdWQiOiIyIiwianRpIjoiNmRiZGNiZmEyMWU0YTMzYTgzODg1N2Y4ZTBkYzVlZTkzNDhhNTFiMzBkYzAwZjI4NzhmZjY2YzQyNDA5OTc2MWYzZDQ3OWJlOWZjMmE1NDciLCJpYXQiOjE1NDk1MDg5MDUsIm5iZiI6MTU0OTUwODkwNSwiZXhwIjoyMTE3NTg4OTA0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.ENVYUdtImZP8G4QibyC2060j5g0-rawFCjMTV0DhSvgZ-pZj-anjS5cEGWMtNB0cxD8sh3Ro1QwisGVfkBh0Mb1m6jArTHp_yN-xbd3Gd0LYETHEwZVrnGGzs9FJ4F7BS8_MyZDX0qIUrz18eupaVT-0VCCRW26wNp1TW-9QpyaoBbQUqWIQUJL88e_yN4pp-eXLqPRzg1KZAPnlFpZrWIFBOOahT7eDJ3mcqBrXApPxIBNKRKHrg63NV0Kr86NcsFx1Cv9bJdNkvNTBcnlBUK21RF2MlCnkQKjv56b4DaFrVqUtHV6ngo8WtWHkE2kxNE2p0OSt1z_E0vZr2Hu_HHX_CJQA4dr8DUn57j3QkS2Oa4_QEmHaU_4ru9jNBaeQb2cKwF3cyLllei-48myxQzQy9CCp_dqx--SPDQ4pz4X-hfbAhj7_Lc3DQUnd_LEr8ta1vT67gE1YKLdFWZl_rE_ukrdAq-89qfo-P_YwoED-i3qfNWjhSOJx3g3w7n6C3Xc2tBRn42p_R0uIqJ8g4bMV1ffkRD2YWfENcrgMw54m8a6MQTLCvfekNgidYKn8NrCEUUxR59fCvzyEz5fOWhkw_G_Q-IzRYnMlMMGwTFa2Ik2t5uN8BX5mJicQpEH-20ht3rD2X-g1GBmLO1ZIk8XeSZv7sCR4eYI5DsX801s',
                'created_at' => '2019-02-07 03:08:25',
                'updated_at' => '2019-02-07 03:08:25',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 40,
                'user_id' => 2,
                'api_token' => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjNmMGZhOTFlYmNjODI2M2FhNTUwMWUyZjUxYTE0Nzk5M2I3YzJhMGMzYTRmNDVmZjI3MTM3YWVmNDgxODZlOWFjZDYwYmZkZjUyMWUzYjJiIn0.eyJhdWQiOiIyIiwianRpIjoiM2YwZmE5MWViY2M4MjYzYWE1NTAxZTJmNTFhMTQ3OTkzYjdjMmEwYzNhNGY0NWZmMjcxMzdhZWY0ODE4NmU5YWNkNjBiZmRmNTIxZTNiMmIiLCJpYXQiOjE1NDk4NDk5MzQsIm5iZiI6MTU0OTg0OTkzNCwiZXhwIjoyMTE3OTI5OTM0LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.RRuiTF5SpDilyEJwAtu68IcMGnPwOjKGSfh2bTViG7-CV27SqKekHlY4xwA1KfkR8kmrZnlsO02Fw5xrwdQyssxe60ae4RWOGme3-aHK4WeuDpsDHdm91D24jOPprE3bYw9EliRMlrKtTvLGgcNXDTXcDyjo9dyTKxaIm3joOi478aCDMDs7Bhhb5NecEIxUeGXwJwEaljnJd1YvLCjmzc7VOkTYDKi5ZLtg5GaKP2jvHmQVgt1nr6Cy7tu_odkIlAi2e_nhz2NzD8MG0C4yIlxSMjHH7oBkGG7Y59yehuBSbi6jBkedqc31Rl-owPewpTWQ-q9D0jXb64D_Bx79UAPyvK_F2u6pJEj0fV1OZWMiKWPhlyJpfkWWfag6P0XPazj7MllVJ9RupJNJRP_7TqjdVdtCLQ7Nqha_A2WHd1LvD74IU4FE076W5BXsnWQK-hFRn6GafBJm7u5OylQbWXSyIbNFkR3NR8LHxmhA9wUXA2N8E2c2uH9JVAAFX_quPW3jiQY5VkK3Q1PGT5JwCQaKyXXBDVyYjAghw1hME0Vm2ewdORC7BXZFUN9JwuGrBSxI2eMKEEK7LUkk469JbPYCTAMOKaVTzMy-o9FYzIb5OyIhZVbmGtbRuxlDzS08pOeaenEm2xrNR8KvJeyqV5en6C8NYgM54ebr3A1CcBY',
                'created_at' => '2019-02-11 01:52:14',
                'updated_at' => '2019-02-11 01:52:14',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}