export class Servicio{
	constructor(
        public id: number,
        public id_padre: number,
        public descripcion: string,
        public image: string,
        public nombre: string,
		public activo: number,
		public idpresona: number,
		public creditos: number,
		public opciones: number,
		public createdAt: any,
		public updatedAt: any
	){}
}