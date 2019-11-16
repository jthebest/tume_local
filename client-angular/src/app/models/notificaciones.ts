export class Notificaciones {
    constructor(
        public id: number,
        public idpersona: number,
        public idtiponotificacion: number,
        public leido: string,
        public created_at: any,
        public updated_at: any,
        public mensaje: string,
        public idOperacion: number
    ) { }
}