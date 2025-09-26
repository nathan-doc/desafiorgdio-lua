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
    equipamento = "Espada Longa, Escudo de Ferro, Armadura de Couro"
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
print("\n======================== Atributos ================================")
print("| ataque:       ".. progressBar(atributos.ataque)       .. " (" .. atributos.ataque       .. "/15)")
print("| defesa:       ".. progressBar(atributos.defesa)       .. " (" .. atributos.defesa       .. "/15)")
print("| vida:         ".. progressBar(atributos.vida)         .. " (" .. atributos.vida         .. "/15)")
print("| magia:        ".. progressBar(atributos.magia)        .. " (" .. atributos.magia        .. "/15)")
print("| stamina:      ".. progressBar(atributos.stamina)      .. " (" .. atributos.stamina      .. "/15)")
print("| velocidade:   ".. progressBar(atributos.velocidade)   .. " (" .. atributos.velocidade   .. "/15)")
print("| inteligencia: ".. progressBar(atributos.inteligencia) .. " (" .. atributos.inteligencia .. "/15)")
print("| carisma:      ".. progressBar(atributos.carisma)      .. " (" .. atributos.carisma      .. "/15)")