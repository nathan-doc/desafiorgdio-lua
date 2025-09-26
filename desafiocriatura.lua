os.execute("chcp 65001")

-- Função para criar barra de progresso
local function progressBar(value)
    local fullChar = "■"
    local emptyChar = "□"
    local points = ""
    for i = 1, 15, 1 do
        if i <= value then
            points = points .. fullChar
        else
            points = points .. emptyChar
        end
    end
    return points
end

-- Definindo o personagem
local personagem = {
    nome = "Adrielo",
    descricao = "Um aventureiro corajoso e destemido, sempre pronto para enfrentar desafios.",
    emoji = "⚔️",
    som = "Whoosh!",
    comidaFavorita = "Pizza de Calabresa",
    equipamento = "Espada Longa, Escudo de Ferro, Armadura de Couro",
    historiaDeFundo = "Adrielo nasceu em uma vila pacífica nas montanhas de Eldoria. Aos 10 anos, perdeu seus pais em um ataque brutal de dragões selvagens que devastaram sua comunidade. Desde então, treinou incansavelmente nas artes da espada e escudo no dojo local, jurando proteger os inocentes e vingar sua família. Viajou por reinos distantes, enfrentando monstros míticos, aliados improváveis e vilões sombrios, sempre em busca de justiça, aventura e o lendário Tesouro Perdido dos Antigos. Sua jornada o tornou um herói lendário, conhecido por sua honra inabalável e coragem indomável.",
    habilidades = {
        {nome = "Golpe Poderoso", emoji = "⚔️", descricao = "Um ataque devastador com a espada que causa dano extra aos inimigos, ignorando parcialmente a defesa."},
        {nome = "Defesa Inabalável", emoji = "🛡️", descricao = "Levanta o escudo para reduzir significativamente o dano recebido em combate próximo."},
        {nome = "Cura Básica", emoji = "💚", descricao = "Usa magia residual para restaurar uma pequena quantidade de vida própria ou de aliados."},
        {nome = "Velocidade Relâmpago", emoji = "💨", descricao = "Aumenta temporariamente a velocidade, permitindo ataques rápidos e evasões ágeis."},
        {nome = "Fúria Guerreira", emoji = "🔥", descricao = "Entra em um estado de fúria que aumenta o ataque e stamina, mas reduz a defesa."},
        {nome = "Intuição de Batalha", emoji = "👁️", descricao = "Sente a presença de inimigos ocultos e prevê movimentos adversários com alta precisão."}
    }
}

-- Atributos do personagem
local atributos = {
    ataque = 12,
    defesa = 10,
    vida = 14,
    magia = 8,
    stamina = 13,
    velocidade = 11,
    inteligencia = 9,
    carisma = 7
}

-- Imprimindo a ficha do personagem
print("======================== Ficha do Personagem ========================")
print("| Nome: " .. personagem.nome)
print("| Descrição: " .. personagem.descricao)
print("| Emoji: " .. personagem.emoji)
print("| Som: " .. personagem.som)
print("| Comida Favorita: " .. personagem.comidaFavorita)
print("| Equipamento: " .. personagem.equipamento)
print("| História de Fundo: " .. personagem.historiaDeFundo)

print("\n======================== Habilidades ================================")
for _, habilidade in ipairs(personagem.habilidades) do
    print("| Nome: " .. habilidade.nome .. habilidade.emoji)
    print("| Descrição: " .. habilidade.descricao)
end
print("\n======================== Atributos ================================")
print("| ataque:       ".. progressBar(atributos.ataque)       .. " (" .. atributos.ataque       .. "/15)")
print("| defesa:       ".. progressBar(atributos.defesa)       .. " (" .. atributos.defesa       .. "/15)")
print("| vida:         ".. progressBar(atributos.vida)         .. " (" .. atributos.vida         .. "/15)")
print("| magia:        ".. progressBar(atributos.magia)        .. " (" .. atributos.magia        .. "/15)")
print("| stamina:      ".. progressBar(atributos.stamina)      .. " (" .. atributos.stamina      .. "/15)")
print("| velocidade:   ".. progressBar(atributos.velocidade)   .. " (" .. atributos.velocidade   .. "/15)")
print("| inteligencia: ".. progressBar(atributos.inteligencia) .. " (" .. atributos.inteligencia .. "/15)")
print("| carisma:      ".. progressBar(atributos.carisma)      .. " (" .. atributos.carisma      .. "/15)")