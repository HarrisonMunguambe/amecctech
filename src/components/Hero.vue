<script setup lang="ts">
// import { useColorMode } from "@vueuse/core";
// const mode = useColorMode();

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { ArrowRight } from "lucide-vue-next";

// const bounceText = (text: string) => {
//   return text.split("").map((char, index) => ({
//     char,
//     delay: index * 0.1,
//   }));
// };

// const hackathonText = bounceText("AMECCTECH Hackathon");
</script>

<template>
  <section class="container">
    <div
      class="grid place-items-center lg:max-w-screen-xl gap-8 mx-auto py-20 md:py-32"
    >
      <!-- Badge informativo -->
      <div class="text-center">
        <Badge
          variant="outline"
          class="text-sm py-2 text-blue-600 dark:text-blue-400 border-blue-600 dark:border-blue-400"
        >
          <span class="mr-2 font-semibold">🚀 Em breve</span>
          <span>Participa no Hackathon AMECCTECH em Cape Town!</span>
        </Badge>
      </div>

      <!-- Título principal -->
      <div
        class="max-w-screen-md mx-auto text-center text-5xl md:text-6xl font-bold leading-tight"
      >
        <h1>
          Desenvolve as tuas competências no
          <span
            aria-label="AMECCTECH Hackathon"
            role="text"
            class="text-transparent bg-gradient-to-r from-blue-500 to-emerald-600 bg-clip-text inline-block ml-2"
          >
            AMECCTECH Hackathon
          </span>
        </h1>
      </div>

      <!-- Descrição -->
      <p
        class="max-w-screen-sm mx-auto text-xl text-muted-foreground dark:text-gray-300 text-center"
      >
        Organizado pela AMECC e Techsolutions, o AMECCTECH é um hackathon de 48
        horas que reúne os jovens mais brilhantes em Cape Town para inovar e
        criar soluções digitais com impacto.
      </p>

      <!-- Ações -->
      <div
        class="flex flex-col md:flex-row items-center justify-center gap-4 mt-6"
      >
        <!-- Botão Principal -->
        <Button
          as-child
          class="px-8 py-3 bg-gradient-to-r from-blue-600 to-blue-700 hover:from-blue-700 hover:to-blue-800 text-white font-bold rounded-full shadow-lg transform transition-all duration-200 hover:scale-105 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-opacity-50"
        >
          <a
            href="https://youtube.com"
            target="_blank"
            rel="noopener noreferrer"
            class="flex items-center"
          >
            Saber mais
            <ArrowRight
              class="size-5 ml-2 transition-transform group-hover/arrow:translate-x-1"
            />
          </a>
        </Button>

        <!-- Botão Secundário -->
        <Button
          as-child
          variant="outline"
          class="px-8 py-3 border border-gray-500 dark:border-gray-400 text-gray-800 dark:text-white font-semibold rounded-full hover:bg-gray-100 dark:hover:bg-white/10 transition-all duration-200"
        >
          <a href="https://www.instagram.com/amecc/" target="_blank">
            Ver Instagram
          </a>
        </Button>
      </div>
    </div>
  </section>
</template>

<style scoped>
.img-shadow-animation {
  animation: img-shadow-animation 2s infinite alternate linear;
}
.img-border-animation {
  animation: img-border-animation 2s infinite alternate linear;
}
@keyframes img-shadow-animation {
  from {
    opacity: 0.5;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0px);
  }
}
@keyframes img-border-animation {
  from {
    border-top-color: rgba(34, 197, 94, 0.1);
  }
  to {
    border-top-color: rgba(34, 197, 94, 0.6);
  }
}
@keyframes glow-pulse {
  0%,
  100% {
    box-shadow: 0 0 8px rgba(59, 130, 246, 0.6);
  }
  50% {
    box-shadow: 0 0 20px rgba(59, 130, 246, 1);
  }
}
.hover\:glow:hover {
  animation: glow-pulse 2s infinite;
}
</style>
