return {
    'atiladefreitas/dooing',
    dev = true,
    config = function()
        require('dooing').setup {

            -- Timestamp settings
            timestamp = {
                enabled = false, -- Show relative timestamps (e.g., @5m ago, @2h ago)
            },

            -- Window settings
            window = {
                width = 80,
                height = 34,
                position = 'top',
            },

            -- To-do formatting
            formatting = {
                pending = {
                    icon = '○',
                    format = { 'icon', 'due_date', 'ect', 'text', 'notes_icon' },
                },
                in_progress = {
                    icon = '◐',
                    format = { 'icon', 'due_date', 'ect', 'text', 'notes_icon' },
                },
                done = {
                    icon = '✓',
                    format = { 'icon', 'due_date', 'ect', 'text', 'notes_icon' },
                },
            },

            -- Nested tasks
            nested_tasks = {
                enabled = true, -- Enable nested subtasks
                indent = 4, -- Spaces per nesting level
                retain_structure_on_complete = true, -- Keep nested structure when completing tasks
                move_completed_to_end = true, -- Move completed nested tasks to end of parent group
            },

            -- Keymaps
            keymaps = {
                toggle_window = '<leader>td', -- Toggle global todos
                open_project_todo = '<leader>tp',
            },

            -- Priority settings
            priorities = {
                {
                    name = 'important',
                    weight = 4,
                },
                {
                    name = 'urgent',
                    weight = 2,
                },
            },

            done_sort_by_completed_time = true,
        }
    end,
}
