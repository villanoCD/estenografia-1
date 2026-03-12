const root = document.getElementById('root');

const newElement = ({ tagName, name, id, className, value, DisplayContent }) => {
    const element = document.createElement(tagName);
    element.name = name;
    element.id = id;
    element.classList.add(className);
    element.value = value;
    element.textContent = DisplayContent;

    return element;
}

const titulo = newElement({
    tagName: 'h1',
    name: 'vladi',
    id: 'titulo',
    className: 'titulo',
    value: '',
    DisplayContent: 'Hola, soy Vladi'
});

const circulo = newElement({
    tagName: 'div',
    className: 'circle',
});
root.appendChild(titulo);
root.appendChild(circulo);