import { LightningElement, track } from 'lwc';

export default class Hellow extends LightningElement {
    @track typeHere = 'Default';
    
    changed(event){
        this.typeHere = event.target.value;
    }

}