import DButton from "discourse/components/d-button";
import { i18n } from "discourse-i18n";
import { openComposer } from "discourse/lib/composer";

<template>
  {{#if this.currentUser.can_create_topic}}
    <DButton
      @icon="plus"
      @label={{i18n "topic.create"}}
      @action={{this.openComposer}}
      class="btn-primary create-topic"
      id="create-topic"
    />
  {{/if}}
</template>

export default {
  openComposer() {
    openComposer();
  }
};
