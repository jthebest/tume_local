export class propuesta_servicio {
    constructor(

        public id: number,
        public id_solicitud: number,
        public id_usuario: number,
        public id_profesional: number,
        public limite: number,
        public created_at: any,
        public updated_at: any,
        public costo: number,
        public descripcion: string,
        public visto: number,
        public contratado: number,
        public rechazado: number,
        public creditos: number,
        public mailtime_rating_usuario: any,
        public mailtime_rating_profesional: any,
        public contratado_fecha: any,
        public rechazado_fecha: any,
        public id_servicio: number


    ) { }
}