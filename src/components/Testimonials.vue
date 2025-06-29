<script setup lang="ts">
import { CheckCircleIcon } from "lucide-vue-next";

const hackathon = {
  theme: "Inovação Tecnológica",
  mission:
    "A missão do grupo será propor soluções criativas e viáveis para um desafio surpresa relacionado à inovação tecnológica. O objetivo é impactar positivamente o futuro da juventude moçambicana, utilizando tecnologia como principal ferramenta de transformação.",
  howItWorks:
    "O evento terá a duração de 2 dias. O primeiro será dedicado à criação e estruturação da ideia, enquanto o segundo será reservado para a apresentação final dos projetos.",
  requirements: [
    "Nome do grupo e participantes",
    "Problema identificado",
    "Proposta de solução",
    "Estratégia de marketing",
    "Modelo de negócio",
  ],
  jury: "Especialistas em Tecnologia, Educação, Políticas Públicas e Empreendedorismo avaliarão os projetos com base em inovação, viabilidade e impacto.",
  participants:
    "Aberto a todos os estudantes, com foco especial nos estudantes Moçambicanos residentes em Portugal. Se queres colaborar com mentes criativas, melhorar tuas habilidades e resolver desafios reais, este evento é para ti!",
};
</script>

<template>
  <section id="hackathon-amecc" class="py-24 sm:py-32 px-4 sm:px-6 lg:px-12">
    <div
      class="max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-12 items-center"
    >
      <div class="space-y-10">
        <div>
          <h2
            class="text-blue-600 text-sm font-semibold tracking-widest uppercase mb-1"
          >
            Tema: {{ hackathon.theme }}
          </h2>
          <p
            class="text-2xl font-bold text-gray-900 dark:text-white leading-snug"
          >
            {{ hackathon.mission }}
          </p>
        </div>

        <div>
          <h3
            class="text-lg font-semibold text-blue-700 dark:text-blue-300 mb-2"
          >
            Como funcionará?
          </h3>
          <p class="text-base text-gray-700 dark:text-gray-300 leading-relaxed">
            {{ hackathon.howItWorks }}
          </p>
        </div>

        <div>
          <h3
            class="text-lg font-semibold text-blue-700 dark:text-blue-300 mb-4"
          >
            O documento final do grupo deverá incluir:
          </h3>
          <ul class="space-y-2">
            <li
              v-for="(item, index) in hackathon.requirements"
              :key="index"
              class="flex items-start gap-2 text-gray-700 dark:text-gray-300"
            >
              <CheckCircleIcon class="text-emerald-500 w-5 h-5 mt-1" />
              <span class="leading-snug">{{ item }}</span>
            </li>
          </ul>
        </div>

        <div>
          <h3
            class="text-lg font-semibold text-blue-700 dark:text-blue-300 mb-2"
          >
            O Júri
          </h3>
          <p class="text-base text-gray-700 dark:text-gray-300 leading-relaxed">
            {{ hackathon.jury }}
          </p>
        </div>

        <div>
          <h3
            class="text-lg font-semibold text-blue-700 dark:text-blue-300 mb-2"
          >
            Quem pode participar?
          </h3>
          <p class="text-base text-gray-700 dark:text-gray-300 leading-relaxed">
            {{ hackathon.participants }}
          </p>
        </div>
      </div>

      <div
        class="rounded-xl overflow-hidden shadow-lg border border-gray-200 dark:border-zinc-700"
      >
        <img
          src="/studs.jpg"
          alt="Imagem ilustrativa do Hackathon"
          class="w-full h-auto object-cover object-center"
        />
      </div>
    </div>
  </section>
</template>
