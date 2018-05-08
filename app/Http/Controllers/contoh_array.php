public function create(array $data)
{

    $data_array = array(
        'first_name' => $data['first_name'],
        'last_name' => $data['last_name'],
        'email' => $data['email'],
        'password' => bcrypt($data['password']
    );

    $user = User::create($data_array);

    $business = Business::create($data_array);

    $business->owners()->sync([$user->id]);

    return $user;
}