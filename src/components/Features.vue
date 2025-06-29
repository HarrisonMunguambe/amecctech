<script setup lang="ts">
import { ref, nextTick } from "vue";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { ChevronDown, ChevronUp } from "lucide-vue-next";

interface ScheduleItem {
  time: string;
  title: string;
  description: string;
}

const day1Schedule: ScheduleItem[] = [
  {
    time: "08:15 - 09:00",
    title: "Chegada dos Participantes",
    description: "Receção e registo dos participantes.",
  },
  {
    time: "09:00 - 10:00",
    title: "Discurso de Abertura",
    description: "Boas-vindas e introdução ao evento.",
  },
  {
    time: "10:00 - 10:30",
    title: "Apresentação do Desafio",
    description: "Divulgação do tema e objetivos do hackathon.",
  },
  {
    time: "10:30 - 11:00",
    title: "Coffee Break",
    description: "Intervalo para café e networking informal.",
  },
  {
    time: "11:00 - 11:45",
    title: "Palestra de Sustentabilidade",
    description: "Discussão sobre práticas sustentáveis em tecnologia.",
  },
  {
    time: "11:45 - 12:15",
    title: "Palestra de Marketing",
    description: "Dicas sobre como apresentar e vender ideias.",
  },
  {
    time: "12:15 - 14:00",
    title: "Brainstorming e Planeamento",
    description: "Desenvolvimento inicial das ideias em equipa.",
  },
  {
    time: "13:00 - 14:00",
    title: "Validação da Ideia",
    description: "Testes preliminares e refinamento das propostas.",
  },
  {
    time: "14:00 - 15:00",
    title: "Almoço",
    description: "Pausa para refeição.",
  },
  {
    time: "15:00 - 18:30",
    title: "Desenvolvimento do Projeto",
    description: "Construção dos protótipos pelos participantes.",
  },
  {
    time: "18:20 - 18:30",
    title: "Submissão dos Rascunhos",
    description: "Envio inicial dos projetos.",
  },
  {
    time: "18:30 - 18:45",
    title: "Coffee Break",
    description: "Pausa rápida com bebidas e snacks.",
  },
  {
    time: "18:45 - 19:00",
    title: "Considerações Finais",
    description: "Fecho do primeiro dia e orientações para o dia seguinte.",
  },
  {
    time: "19:00 - 20:00",
    title: "Networking",
    description: "Interação informal entre participantes e mentores.",
  },
];

const day2Schedule: ScheduleItem[] = [
  {
    time: "08:30 - 09:00",
    title: "Chegada dos Participantes",
    description: "Receção para o segundo dia.",
  },
  {
    time: "09:00 - 09:15",
    title: "Recapitulação do Dia Anterior",
    description: "Resumo e pontos principais do primeiro dia.",
  },
  {
    time: "09:15 - 10:00",
    title: "Workshop: Como Fazer um Pitch que Convence",
    description: "Com Arafat Cossa.",
  },
  {
    time: "10:00 - 11:30",
    title: "Refinamento do Protótipo e Submissão",
    description: "Ajustes finais e entrega dos projetos.",
  },
  {
    time: "11:30 - 11:45",
    title: "Coffee Break",
    description: "Intervalo para café.",
  },
  {
    time: "11:45 - 13:30",
    title: "Apresentações (1ª Parte)",
    description: "Apresentação dos primeiros projetos.",
  },
  {
    time: "13:30 - 14:30",
    title: "Almoço",
    description: "Pausa para refeição.",
  },
  {
    time: "14:30 - 16:00",
    title: "Apresentações (2ª Parte)",
    description: "Continuação das apresentações.",
  },
  {
    time: "16:00 - 16:30",
    title: "Deliberação dos Jurados | Coffee Break",
    description: "Tempo para os jurados decidirem os vencedores.",
  },
  {
    time: "16:30 - 16:45",
    title: "Premiação",
    description: "Entrega de prémios aos melhores projetos.",
  },
  {
    time: "16:45 - 17:00",
    title: "Encerramento Oficial",
    description:
      "Participação de Pedro Alucuamala (Cônsul Geral), Presidente da AEMOPorto e CEO da Techsolutions.",
  },
  {
    time: "17:00 - 18:00",
    title: "Networking",
    description: "Encerramento com socialização e troca de contactos.",
  },
];

const currentDay = ref<1 | 2>(1);
const expandedIndex = ref<number | null>(null);

const toggleDay = (day: 1 | 2) => {
  currentDay.value = day;
  expandedIndex.value = null;
};

const toggleDescription = (index: number) => {
  expandedIndex.value = expandedIndex.value === index ? null : index;
};
</script>

<template>
  <section
    id="schedule"
    class="container py-20 sm:py-32 max-w-6xl mx-auto px-4"
  >
    <h2
      class="text-blue-600 text-center text-lg font-semibold tracking-wide mb-2 uppercase"
    >
      Cronograma
    </h2>
    <h1
      class="text-center text-4xl font-extrabold mb-12 text-gray-900 dark:text-white"
    >
      Agenda do Evento
    </h1>

    <div class="flex flex-col md:flex-row gap-8">
      <nav
        class="flex md:flex-col space-x-4 md:space-x-0 md:space-y-4 justify-center md:justify-start"
      >
        <button
          @click="toggleDay(1)"
          :class="[
            'px-6 py-3 font-semibold rounded-lg transition-all duration-300 text-lg md:text-base',
            currentDay === 1
              ? 'bg-gradient-to-r from-blue-500 to-blue-700 text-white shadow-lg'
              : 'bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-600',
          ]"
          aria-label="Agenda Dia 1"
        >
          Dia 1
          <div
            class="text-xs font-normal mt-1 text-gray-500 dark:text-gray-400"
          >
            Sábado, 05 de Abril
          </div>
        </button>
        <button
          @click="toggleDay(2)"
          :class="[
            'px-6 py-3 font-semibold rounded-lg transition-all duration-300 text-lg md:text-base',
            currentDay === 2
              ? 'bg-gradient-to-r from-blue-500 to-blue-700 text-white shadow-lg'
              : 'bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-600',
          ]"
          aria-label="Agenda Dia 2"
        >
          Dia 2
          <div
            class="text-xs font-normal mt-1 text-gray-500 dark:text-gray-400"
          >
            Domingo, 06 de Abril
          </div>
        </button>
      </nav>

      <div class="flex-1 space-y-5">
        <Card
          v-for="(item, index) in currentDay === 1
            ? day1Schedule
            : day2Schedule"
          :key="index"
          class="border border-gray-200 dark:border-gray-700 shadow-sm hover:shadow-lg transition-shadow rounded-xl overflow-hidden"
        >
          <CardHeader
            @click="toggleDescription(index)"
            class="cursor-pointer flex justify-between items-center p-5 select-none"
            :aria-expanded="expandedIndex === index"
            role="button"
            tabindex="0"
            @keydown.enter.prevent="toggleDescription(index)"
            @keydown.space.prevent="toggleDescription(index)"
          >
            <div>
              <p class="text-sm font-semibold text-blue-600 mb-1 tracking-wide">
                {{ item.time }}
              </p>
              <CardTitle
                class="text-xl font-bold text-gray-900 dark:text-white leading-tight"
              >
                {{ item.title }}
              </CardTitle>
            </div>
            <component
              :is="expandedIndex === index ? ChevronUp : ChevronDown"
              class="text-blue-600 w-6 h-6"
            />
          </CardHeader>
          <transition name="fade-expand">
            <CardContent
              v-if="expandedIndex === index"
              class="text-gray-700 dark:text-gray-300 text-base px-5 pb-5 pt-0 leading-relaxed"
            >
              {{ item.description }}
            </CardContent>
          </transition>
        </Card>
      </div>
    </div>
  </section>
</template>

<style scoped>
.fade-expand-enter-active,
.fade-expand-leave-active {
  transition: all 0.3s ease;
}
.fade-expand-enter-from,
.fade-expand-leave-to {
  opacity: 0;
  max-height: 0;
  padding-top: 0;
  padding-bottom: 0;
  margin: 0;
}
.fade-expand-enter-to,
.fade-expand-leave-from {
  opacity: 1;
  max-height: 200px;
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}

[role="button"]:focus {
  outline: 2px solid #2563eb;
  outline-offset: 3px;
}

@media (min-width: 768px) {
  .schedule-scroll {
    max-height: 70vh;
    overflow-y: auto;
  }
}
</style>
