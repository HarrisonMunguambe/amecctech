<script setup lang="ts">
import Separator from "./ui/separator/Separator.vue";
</script>

<template>
  <footer id="footer" class="container py-24 pb-16 sm:py-32 sm:pb-24">
    <div class="p-10 bg-muted/50 dark:bg-card border rounded-2xl">
      <div
        class="grid grid-cols-2 md:grid-cols-4 xl:grid-cols-6 gap-x-12 gap-y-8"
      >
        <div class="col-span-full xl:col-span-2">
          <a href="#" class="flex font-bold items-center">
            <img
              src="/logo.jpg"
              alt="AMECCTECH Logo"
              class="w-9 h-9 mr-2 rounded-lg border"
            />
            <h3 class="text-2xl">AMECCTECH</h3>
          </a>
          <p class="mt-2 opacity-70 max-w-sm">
            Organised by TECHSOLUTIONS, in collaboration with the Mozambican
            Student Association in Cape Town (AMECC), this challenge is designed
            for those who are not afraid to think differently.
          </p>
        </div>

        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Organizers</h3>
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
        </div>

        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Event</h3>
          <a href="#coming-soon" class="opacity-60 hover:opacity-100"
            >Schedule</a
          >
          <a href="#coming-soon" class="opacity-60 hover:opacity-100"
            >Rules & Guidelines</a
          >
          <a href="#coming-soon" class="opacity-60 hover:opacity-100">FAQ</a>
        </div>

        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Support</h3>
          <a href="#coming-soon" class="opacity-60 hover:opacity-100"
            >Contact Us</a
          >
          <a href="#coming-soon" class="opacity-60 hover:opacity-100"
            >Sponsorship</a
          >
          <a href="#coming-soon" class="opacity-60 hover:opacity-100"
            >Volunteering</a
          >
        </div>

        <div class="flex flex-col gap-2">
          <h3 class="font-bold text-lg">Social Media</h3>
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

      <Separator class="my-6" />
      <section>
        <h3>&copy; 2025 AMECCTECH Hackathon. All rights reserved.</h3>
      </section>
    </div>
  </footer>
</template>
