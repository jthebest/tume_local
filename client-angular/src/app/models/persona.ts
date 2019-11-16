export class Persona {
    constructor(
        public id: number,
        public nombre: string,
        public apellido: string,
        public telefono: string,
        public id_ciudad: number,
        public facebook: string,
        public website: string,
        public identificacion: string,
        public email: string,
        public direccion: string,
        public avatar: string,
        public creditos: number,
        public rating_promedio: number,
        public rating_total: number,
        public id_tipo_identificacion: number,
        public empresa: string,
        public created_at: any,
        public updated_at: any
    ) { }
}