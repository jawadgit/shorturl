<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ShortUrlTest extends TestCase
{

    /**
     * @test
     * check short route proper creation
     * check json structure of the route
     */
    public function it_should_save_short_url()
    {
        $response = $this->post(route('create', [
            'destination' => 'https://abc.com',
        ]), []);

        $response->assertSuccessful();
        $response->assertJsonStructure([
                    'destination',
                    'slug',
                    'views',
                    'updated_at',
                    'created_at',
                    'id',
        ]);
    }
}
