export class Usuario {
    constructor(

        public id: number,
        public email: string,
        public password: string,
        public remember_token: string,
        public created_at: any,
        public updated_at: any,
        public activation_token: string,
        public activo: number,
        public new_password: number,
        public fullpassword: string,
        public provider: string,
        public provider_id: string


    ) { }
}