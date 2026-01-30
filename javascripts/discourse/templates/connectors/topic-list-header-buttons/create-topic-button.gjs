<script>
  import Component from "@glimmer/component";
  import { action } from "@ember/object";
  import { openComposer } from "discourse/lib/composer";

  export default class CreateTopicButtonConnector extends Component {
    @action
    openComposer() {
      openComposer();
    }
  }
</script>

<template>
  {{#if this.currentUser.can_create_topic}}
    <DButton
      @icon="plus"
      @label={{i18n "topic.create"}}
      {{on "click" this.openComposer}}
      class="btn-primary create-topic"
      id="create-topic"
    />
  {{/if}}
</template>
