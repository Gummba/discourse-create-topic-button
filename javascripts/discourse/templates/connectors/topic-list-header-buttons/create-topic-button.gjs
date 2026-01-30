import DButton from "discourse/components/d-button";
import { i18n } from "discourse-i18n";
import { action } from "discourse/lib/helpers";

<template>
  {{#if this.currentUser.can_create_topic}}
    <DButton
      @icon="plus"
      @label={{i18n "topic.create"}}
      {{action "createTopic"}}
      class="btn-primary create-topic"
      id="create-topic"
    />
  {{/if}}
</template>
