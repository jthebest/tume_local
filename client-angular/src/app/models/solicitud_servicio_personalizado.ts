
export class Solicitud_servicio_personalizado{
	constructor(

        public id:  number,
        public id_solicitud_servicio:  number,
        public rango_edad:  string,
        public tiempo_experiencia:  string,
        public sexo:  string,
        public rango_precio:  string,
        public ubicacion:  string,
        public dato_extra:  string,
        public imagen:  string,
        public created_at:  any,
        public updated_at:  string,
        public activo:  number

	){}
}