<script setup lang="ts">
import Separator from "./ui/separator/Separator.vue";
</script>

<template>
  <footer id="footer" class="container py-24 pb-16 sm:py-32 sm:pb-24">
    <div class="p-10 bg-muted/50 dark:bg-card border rounded-2xl">
      <!-- Layout grid -->
      <div
        class="grid grid-cols-2 md:grid-cols-4 xl:grid-cols-6 gap-x-12 gap-y-8"
      >
        <!-- Logo -->
        <div class="col-span-full xl:col-span-2">
          <a href="#" class="flex font-bold items-center">
            <img
              src="/logo.jpg"
              alt="Logotipo AMECCTECH"
              class="w-9 h-9 mr-2 rounded-lg border"
            />
            <h3 class="text-2xl">AMECCTECH</h3>
          </a>
          <p class="mt-2 opacity-70 max-w-sm">
            O principal hackathon de Cape Town, reunindo inovadores e
            programadores para resolver desafios do mundo real.
          </p>
        </div>

        <!-- Organizadores -->
        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Organizadores</h3>
          <a
            href="https://www.amecc.org"
            class="opacity-60 hover:opacity-100"
            target="_blank"
          >
            AMECC
          </a>
          <a
            href="https://techsolutions.co.za"
            class="opacity-60 hover:opacity-100"
            target="_blank"
          >
            Techsolutions
          </a>
          <a href="#" class="opacity-60 hover:opacity-100">AMECCTECH.com</a>
        </div>

        <!-- Informações do Evento -->
        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Evento</h3>
          <a href="#" class="opacity-60 hover:opacity-100">Agenda</a>
          <a href="#" class="opacity-60 hover:opacity-100"
            >Regras e Diretrizes</a
          >
          <a href="#" class="opacity-60 hover:opacity-100"
            >Perguntas Frequentes</a
          >
        </div>

        <!-- Apoio -->
        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Apoio</h3>
          <a href="#" class="opacity-60 hover:opacity-100">Fale Connosco</a>
          <a href="#" class="opacity-60 hover:opacity-100">Patrocínio</a>
          <a href="#" class="opacity-60 hover:opacity-100">Voluntariado</a>
        </div>

        <!-- Redes Sociais -->
        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Redes Sociais</h3>
          <a
            href="https://www.linkedin.com/company/amecc/"
            class="opacity-60 hover:opacity-100"
            target="_blank"
          >
            LinkedIn
          </a>
          <a
            href="https://www.instagram.com/amecctech/"
            class="opacity-60 hover:opacity-100"
            target="_blank"
          >
            Instagram
          </a>
          <a
            href="https://www.facebook.com/amecctech"
            class="opacity-60 hover:opacity-100"
            target="_blank"
          >
            Facebook
          </a>
        </div>
      </div>

      <!-- Separador e direitos -->
      <Separator class="my-6" />
      <section>
        <h3>&copy; 2025 AMECCTECH Hackathon. Todos os direitos reservados.</h3>
      </section>
    </div>
  </footer>
</template>
