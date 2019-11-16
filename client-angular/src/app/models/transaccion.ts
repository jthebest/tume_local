export class Transaccion {
    constructor(

        public idtransaccion: number,
        public idusuario: number,
        public idplan: number,
        public estado: number,
        public created_at: any,
        public updated_at: any,
        public formapago: number,
        public referencia: string

    ) { }
}